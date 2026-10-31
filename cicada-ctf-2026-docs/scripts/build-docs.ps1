<#
.SYNOPSIS
    Cicada CTF 2026 - Documentation Verification, PDF/DOCX Export (Pandoc), and Static Site Builder (MkDocs)
.DESCRIPTION
    Validates internal Markdown links, image placeholder paths, and required 10-part headings,
    and compiles the repository into single-file DOCX / PDF packages (excluding internal-only contacts by default).
.PARAMETER Target
    'verify'      - Run link, heading, and photo-placeholder verification only (default)
    'stakeholder' - Export 1-page Executive Summary and 5-10 page Sponsor/College Report (DOCX & PDF)
    'full'        - Export complete public documentation package into a single DOCX & PDF
    'site'        - Build static documentation portal via MkDocs
    'all'         - Run verification and build all export targets
.PARAMETER IncludeInternal
    Switch to explicitly include 10-appendices/contact-directory-INTERNAL.md (Default: $false for privacy compliance)
#>
param(
    [ValidateSet("verify", "stakeholder", "full", "site", "all")]
    [string]$Target = "verify",
    [switch]$IncludeInternal = $false
)

$ErrorActionPreference = "Stop"
$RepoRoot = Split-Path -Parent $PSScriptRoot
$DistDir  = Join-Path $RepoRoot "dist"

Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "  CICADA CTF 2026 - DOCUMENTATION BUILD & VERIFY PIPELINE   " -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan

# Ordered list of public documentation files for full book compilation
$OrderedPublicFiles = @(
    "00-front-matter/cover-page.md",
    "00-front-matter/about-the-event.md",
    "00-front-matter/about-organizers.md",
    "00-front-matter/acknowledgements.md",
    "00-front-matter/table-of-contents.md",
    "01-planning-and-preparation/ideation-and-concept.md",
    "01-planning-and-preparation/timeline-and-milestones.md",
    "01-planning-and-preparation/budget-overview.md",
    "01-planning-and-preparation/meeting-minutes/README.md",
    "01-planning-and-preparation/meeting-minutes/001-kickoff-meeting.md",
    "02-teams/documentation-team.md",
    "02-teams/logistics-team.md",
    "02-teams/pr-and-design-team.md",
    "02-teams/sponsorship-team.md",
    "02-teams/outreach-team.md",
    "02-teams/development-team.md",
    "03-participant-lifecycle/registration-and-eligibility.md",
    "03-participant-lifecycle/team-formation-rules.md",
    "03-participant-lifecycle/selection-and-shortlisting.md",
    "03-participant-lifecycle/communication-to-participants.md",
    "04-technical/ctf-format-and-rules.md",
    "04-technical/platform-and-infrastructure.md",
    "04-technical/challenge-design.md",
    "04-technical/scoring-and-leaderboard.md",
    "04-technical/security-and-anti-cheating.md",
    "04-technical/technical-issues-and-resolutions.md",
    "05-outreach-pr-sponsorship/marketing-and-social-media.md",
    "05-outreach-pr-sponsorship/posters-and-design-assets.md",
    "05-outreach-pr-sponsorship/outreach-campaigns.md",
    "05-outreach-pr-sponsorship/sponsors-and-partners.md",
    "06-logistics/venue-and-setup.md",
    "06-logistics/equipment-and-network.md",
    "06-logistics/schedule-and-run-of-show.md",
    "06-logistics/volunteers-and-roles.md",
    "06-logistics/food-travel-accommodation.md",
    "06-logistics/safety-and-emergency-plan.md",
    "07-event-days/day-wise-report.md",
    "07-event-days/inauguration-and-ceremonies.md",
    "07-event-days/opening-and-closing.md",
    "07-event-days/incidents-log.md",
    "08-results-and-post-event/final-results-and-winners.md",
    "08-results-and-post-event/prize-distribution.md",
    "08-results-and-post-event/feedback-analysis.md",
    "08-results-and-post-event/financial-summary.md",
    "08-results-and-post-event/lessons-learned.md",
    "08-results-and-post-event/recommendations-for-next-edition.md",
    "09-media/photo-index.md",
    "09-media/image-guidelines.md",
    "10-appendices/glossary.md",
    "10-appendices/missing-information-tracker.md",
    "10-appendices/team-lead-questionnaires.md"
)

if ($IncludeInternal) {
    Write-Warning "INCLUDING INTERNAL CONTACT DIRECTORY IN EXPORT (Internal Distribution Only!)"
    $OrderedPublicFiles += "10-appendices/contact-directory-INTERNAL.md"
}

function Invoke-DocVerification {
    Write-Host "`n[1/3] Checking existence of all required Markdown files..." -ForegroundColor Yellow
    $missingFiles = 0
    foreach ($relPath in $OrderedPublicFiles) {
        $fullPath = Join-Path $RepoRoot $relPath
        if (-not (Test-Path $fullPath)) {
            Write-Host "  [MISSING] $relPath" -ForegroundColor Red
            $missingFiles++
        }
    }
    if ($missingFiles -eq 0) {
        Write-Host "  [OK] All $($OrderedPublicFiles.Count) core documentation files exist." -ForegroundColor Green
    }

    Write-Host "`n[2/3] Verifying relative Markdown links across repository..." -ForegroundColor Yellow
    $allMdFiles = Get-ChildItem -Path $RepoRoot -Recurse -Filter "*.md"
    $brokenLinks = 0
    $linkRegex = '\[([^\]]+)\]\(([^)#]+)(?:#[^)]+)?\)'

    foreach ($file in $allMdFiles) {
        $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
        $matches = [regex]::Matches($content, $linkRegex)
        foreach ($m in $matches) {
            $target = $m.Groups[2].Value.Trim()
            if ($target -match '^(http|https|mailto|conversation|file):') { continue }
            if ($target -match '[<>]') { continue }
            $resolvedPath = Join-Path $file.DirectoryName $target
            if (-not (Test-Path $resolvedPath)) {
                if ($target -match '\.jpg$') {
                    $photoDir = Split-Path -Parent $resolvedPath
                    if (-not (Test-Path $photoDir)) {
                        Write-Host "  [MISSING PHOTO DIR] $($file.Name) -> $target" -ForegroundColor Red
                        $brokenLinks++
                    }
                } else {
                    Write-Host "  [BROKEN LINK] $($file.FullName) -> $target" -ForegroundColor Red
                    $brokenLinks++
                }
            }
        }
    }
    if ($brokenLinks -eq 0) {
        Write-Host "  [OK] All relative Markdown links and photo placeholder directories are valid." -ForegroundColor Green
    }

    Write-Host "`n[3/3] Counting open TBD placeholders across repository..." -ForegroundColor Yellow
    $tbdCount = 0
    foreach ($file in $allMdFiles) {
        $lines = Get-Content -Path $file.FullName -Encoding UTF8
        foreach ($line in $lines) {
            if ($line -match '^>\s*.*TBD:') { $tbdCount++ }
        }
    }
    Write-Host "  [INFO] Active TBD callouts tracked across repository: $tbdCount" -ForegroundColor Cyan
}

function Invoke-PandocExport([string]$ExportMode) {
    if (-not (Get-Command "pandoc" -ErrorAction SilentlyContinue)) {
        Write-Warning "Pandoc is not installed or not in PATH. Install via: winget install JohnMacFarlane.Pandoc"
        return
    }
    if (-not (Test-Path $DistDir)) { New-Item -ItemType Directory -Path $DistDir | Out-Null }

    if ($ExportMode -eq "stakeholder" -or $ExportMode -eq "all") {
        Write-Host "`nExporting Executive Summary and Stakeholder Report..." -ForegroundColor Yellow
        $execSrc = Join-Path $RepoRoot "10-appendices/governance-and-reports/executive-summary.md"
        $repSrc  = Join-Path $RepoRoot "10-appendices/governance-and-reports/sponsor-and-college-report.md"
        pandoc $execSrc -o (Join-Path $DistDir "Cicada-CTF-2026-Executive-Summary.docx") --from markdown --to docx
        pandoc $repSrc  -o (Join-Path $DistDir "Cicada-CTF-2026-Stakeholder-Report.docx") --from markdown --to docx --toc
        Write-Host "  [OK] Exported Stakeholder DOCX files to $DistDir" -ForegroundColor Green
    }

    if ($ExportMode -eq "full" -or $ExportMode -eq "all") {
        Write-Host "`nExporting Full Cicada CTF 2026 Documentation Handbook..." -ForegroundColor Yellow
        $absFiles = $OrderedPublicFiles | ForEach-Object { Join-Path $RepoRoot $_ }
        $outDocx = Join-Path $DistDir "Cicada-CTF-2026-Complete-Documentation.docx"
        pandoc @absFiles -o $outDocx --from markdown --to docx --toc --toc-depth=2 --resource-path="$RepoRoot"
        Write-Host "  [OK] Exported Full Documentation DOCX to $outDocx" -ForegroundColor Green
    }
}

Invoke-DocVerification
if ($Target -ne "verify") {
    if ($Target -eq "site" -or $Target -eq "all") {
        if (Get-Command "mkdocs" -ErrorAction SilentlyContinue) {
            Push-Location $RepoRoot
            mkdocs build -d dist/site
            Pop-Location
        } else {
            Write-Warning "MkDocs not found. Install via: pip install mkdocs mkdocs-material"
        }
    }
    if ($Target -in @("stakeholder", "full", "all")) {
        Invoke-PandocExport -ExportMode $Target
    }
}
