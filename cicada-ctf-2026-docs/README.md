# Cicada CTF 2026 — Official Event Documentation Package

Welcome to the official end-to-end documentation repository for **Cicada CTF 2026**, the flagship Capture The Flag cybersecurity competition organized by **Birla Institute of Technology (BIT), Mesra** and the **IEEE Student Branch of BIT Mesra**.

---

## 📌 Event Snapshot

| Attribute | Details |
| :--- | :--- |
| **Event Name** | Cicada CTF 2026 |
| **Event Type** | Capture The Flag (CTF) Cybersecurity Competition |
| **Organizers** | BIT Mesra & IEEE Student Branch, BIT Mesra |
| **Target Timeline** | Early December 2026 (Exact Dates: `TBD`) |
| **Event Mode** | `TBD` (Online / Offline / Hybrid) |
| **Venue** | `TBD` |
| **Documentation Version** | `v0.1.0-draft` (Initial Structure & Tracking Setup) |

> ⚠️ TBD: Confirm exact event dates, competition mode (Online/Offline/Hybrid), and physical/virtual venue | Owner: Logistics Team & Core Committee | Due: 2026-11-10

---

## 🎯 Purpose of This Repository

This documentation package serves three core objectives:
1. **Official Record**: A complete, verifiable record of the event lifecycle, decisions, challenges, technical architecture, and outcomes.
2. **Future Committee Handbook**: A reusable operational blueprint for future editions of Cicada CTF and IEEE BIT Mesra technical events.
3. **Stakeholder & Sponsor Report**: A transparent, structured report for college administration (BIT Mesra), IEEE hierarchy, and corporate sponsors.

---

## 📂 Repository Directory Structure

```text
/cicada-ctf-2026-docs
├── 00-front-matter/
│   ├── cover-page.md
│   ├── about-the-event.md
│   ├── about-organizers.md
│   ├── acknowledgements.md
│   └── table-of-contents.md
├── 01-planning-and-preparation/
│   ├── ideation-and-concept.md
│   ├── timeline-and-milestones.md
│   ├── budget-overview.md
│   └── meeting-minutes/
│       ├── README.md
│       └── 001-kickoff-meeting.md
├── 02-teams/
│   ├── documentation-team.md
│   ├── logistics-team.md
│   ├── pr-and-design-team.md
│   ├── sponsorship-team.md
│   ├── outreach-team.md
│   └── development-team.md
├── 03-participant-lifecycle/
│   ├── registration-and-eligibility.md
│   ├── team-formation-rules.md
│   ├── selection-and-shortlisting.md
│   └── communication-to-participants.md
├── 04-technical/
│   ├── ctf-format-and-rules.md
│   ├── platform-and-infrastructure.md
│   ├── challenge-design.md
│   ├── scoring-and-leaderboard.md
│   ├── security-and-anti-cheating.md
│   └── technical-issues-and-resolutions.md
├── 05-outreach-pr-sponsorship/
│   ├── marketing-and-social-media.md
│   ├── posters-and-design-assets.md
│   ├── outreach-campaigns.md
│   └── sponsors-and-partners.md
├── 06-logistics/
│   ├── venue-and-setup.md
│   ├── equipment-and-network.md
│   ├── schedule-and-run-of-show.md
│   ├── volunteers-and-roles.md
│   ├── food-travel-accommodation.md
│   └── safety-and-emergency-plan.md
├── 07-event-days/
│   ├── day-wise-report.md
│   ├── inauguration-and-ceremonies.md
│   ├── opening-and-closing.md
│   └── incidents-log.md
├── 08-results-and-post-event/
│   ├── final-results-and-winners.md
│   ├── prize-distribution.md
│   ├── feedback-analysis.md
│   ├── financial-summary.md
│   ├── lessons-learned.md
│   └── recommendations-for-next-edition.md
├── 09-media/
│   ├── photos/
│   ├── photo-index.md
│   └── image-guidelines.md
├── 10-appendices/
│   ├── contact-directory-INTERNAL.md
│   ├── glossary.md
│   ├── missing-information-tracker.md
│   ├── team-lead-questionnaires.md
│   ├── templates/
│   │   ├── meeting-minutes-template.md
│   │   ├── daily-event-log-template.md
│   │   ├── incident-report-template.md
│   │   ├── sponsor-deliverable-tracker.md
│   │   ├── volunteer-duty-roster.md
│   │   ├── post-event-feedback-form.md
│   │   └── challenge-documentation-template.md
│   └── governance-and-reports/
│       ├── executive-summary.md
│       ├── sponsor-and-college-report.md
│       ├── documentation-style-guide.md
│       ├── documentation-workflow-plan.md
│       └── master-documentation-checklist.md
├── scripts/
│   ├── build-docs.ps1
│   └── build-docs.sh
└── mkdocs.yml
```

---

## 📏 Documentation Standards & Strict Rules

1. **Zero Fabrication Policy**: Never invent facts, names, dates, numbers, sponsors, scores, or outcomes. Every unconfirmed item uses the standard callout:
   `> ⚠️ TBD: <what is needed> | Owner: <team> | Due: <date>`
2. **Centralized Tracking**: Every `TBD` item across the repository is indexed in [Missing Information Tracker](10-appendices/missing-information-tracker.md).
3. **Privacy & PII Protection**: Personal phone numbers, private email addresses, and sensitive contact details are **strictly prohibited** in public-facing files and must only be recorded in [contact-directory-INTERNAL.md](10-appendices/contact-directory-INTERNAL.md), which is excluded from public exports.
4. **Standard 10-Part Section Structure**: Every major document follows the standardized 10-point section template defined in the [Documentation Style Guide](10-appendices/governance-and-reports/documentation-style-guide.md).

---

## 🚀 Quick Links for Team Leads

- 📋 **[Missing Information Tracker](10-appendices/missing-information-tracker.md)** — View all open TBDs assigned to your team.
- 📝 **[Team Lead Questionnaires](10-appendices/team-lead-questionnaires.md)** — Fill out your team's intake questionnaire to populate sections.
- ✅ **[Master Documentation Checklist](10-appendices/governance-and-reports/master-documentation-checklist.md)** — Before, during, and after event documentation requirements.
- 🔄 **[Documentation Workflow Plan](10-appendices/governance-and-reports/documentation-workflow-plan.md)** — Submission cadence, review gates, and approval process.
- 🛠️ **[Build & Export Scripts](scripts/build-docs.ps1)** — Export documentation to PDF, DOCX (via Pandoc), or static HTML site (via MkDocs).
