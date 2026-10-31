#!/usr/bin/env bash
# ==============================================================================
# Cicada CTF 2026 — Linux/macOS Documentation Build & Export Script (Pandoc/MkDocs)
# Usage: ./scripts/build-docs.sh [verify|stakeholder|full|site|all]
# ==============================================================================
set -euo pipefail

TARGET="${1:-verify}"
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIST_DIR="${REPO_ROOT}/dist"

mkdir -p "${DIST_DIR}"

echo "============================================================"
echo "  CICADA CTF 2026 — DOCUMENTATION BUILD PIPELINE (${TARGET})"
echo "============================================================"

PUBLIC_FILES=(
  "00-front-matter/cover-page.md"
  "00-front-matter/about-the-event.md"
  "00-front-matter/about-organizers.md"
  "00-front-matter/acknowledgements.md"
  "00-front-matter/table-of-contents.md"
  "01-planning-and-preparation/ideation-and-concept.md"
  "01-planning-and-preparation/timeline-and-milestones.md"
  "01-planning-and-preparation/budget-overview.md"
  "01-planning-and-preparation/meeting-minutes/README.md"
  "01-planning-and-preparation/meeting-minutes/001-kickoff-meeting.md"
  "02-teams/documentation-team.md"
  "02-teams/logistics-team.md"
  "02-teams/pr-and-design-team.md"
  "02-teams/sponsorship-team.md"
  "02-teams/outreach-team.md"
  "02-teams/development-team.md"
  "03-participant-lifecycle/registration-and-eligibility.md"
  "03-participant-lifecycle/team-formation-rules.md"
  "03-participant-lifecycle/selection-and-shortlisting.md"
  "03-participant-lifecycle/communication-to-participants.md"
  "04-technical/ctf-format-and-rules.md"
  "04-technical/platform-and-infrastructure.md"
  "04-technical/challenge-design.md"
  "04-technical/scoring-and-leaderboard.md"
  "04-technical/security-and-anti-cheating.md"
  "04-technical/technical-issues-and-resolutions.md"
  "05-outreach-pr-sponsorship/marketing-and-social-media.md"
  "05-outreach-pr-sponsorship/posters-and-design-assets.md"
  "05-outreach-pr-sponsorship/outreach-campaigns.md"
  "05-outreach-pr-sponsorship/sponsors-and-partners.md"
  "06-logistics/venue-and-setup.md"
  "06-logistics/equipment-and-network.md"
  "06-logistics/schedule-and-run-of-show.md"
  "06-logistics/volunteers-and-roles.md"
  "06-logistics/food-travel-accommodation.md"
  "06-logistics/safety-and-emergency-plan.md"
  "07-event-days/day-wise-report.md"
  "07-event-days/inauguration-and-ceremonies.md"
  "07-event-days/opening-and-closing.md"
  "07-event-days/incidents-log.md"
  "08-results-and-post-event/final-results-and-winners.md"
  "08-results-and-post-event/prize-distribution.md"
  "08-results-and-post-event/feedback-analysis.md"
  "08-results-and-post-event/financial-summary.md"
  "08-results-and-post-event/lessons-learned.md"
  "08-results-and-post-event/recommendations-for-next-edition.md"
  "09-media/photo-index.md"
  "09-media/image-guidelines.md"
  "10-appendices/glossary.md"
  "10-appendices/missing-information-tracker.md"
  "10-appendices/team-lead-questionnaires.md"
)

cd "${REPO_ROOT}"
for f in "${PUBLIC_FILES[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "[ERROR] Missing required file: $f"
    exit 1
  fi
done
echo "[OK] All ${#PUBLIC_FILES[@]} core public documentation files verified."

if [[ "${TARGET}" == "stakeholder" || "${TARGET}" == "all" ]]; then
  if command -v pandoc >/dev/null 2>&1; then
    pandoc "10-appendices/governance-and-reports/executive-summary.md" -o "${DIST_DIR}/Cicada-CTF-2026-Executive-Summary.docx"
    pandoc "10-appendices/governance-and-reports/sponsor-and-college-report.md" --toc -o "${DIST_DIR}/Cicada-CTF-2026-Stakeholder-Report.docx"
    echo "[OK] Exported Stakeholder reports to ${DIST_DIR}"
  else
    echo "[WARN] pandoc not installed; skipping DOCX/PDF generation."
  fi
fi

if [[ "${TARGET}" == "full" || "${TARGET}" == "all" ]]; then
  if command -v pandoc >/dev/null 2>&1; then
    pandoc "${PUBLIC_FILES[@]}" --toc --toc-depth=2 -o "${DIST_DIR}/Cicada-CTF-2026-Complete-Documentation.docx"
    echo "[OK] Exported Complete Documentation DOCX to ${DIST_DIR}"
  fi
fi

if [[ "${TARGET}" == "site" || "${TARGET}" == "all" ]]; then
  if command -v mkdocs >/dev/null 2>&1; then
    mkdocs build -d "${DIST_DIR}/site"
    echo "[OK] Built static documentation portal in ${DIST_DIR}/site"
  fi
fi
