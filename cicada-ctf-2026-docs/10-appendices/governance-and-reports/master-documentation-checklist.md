# Master Documentation Checklist (Before, During & After the Event)

## 1. Overview
This master operational checklist provides the **Documentation Team** and **Organizing Committee** of **Cicada CTF 2026** with an end-to-end verification gate across all three phases of the competition lifecycle: **Phase A (Before the Event)**, **Phase B (During the Event)**, and **Phase C (After the Event)**.

---

## Phase A: Before the Event (Planning & Preparation)

### A1. Governance, Rosters & Institutional Approvals
- [x] Initialize complete `/cicada-ctf-2026-docs` repository, templates, and build scripts.
- [x] Create [Missing Information Tracker](../missing-information-tracker.md) and [Team Lead Questionnaires](../team-lead-questionnaires.md).
- [ ] Collect confirmed member tables (`Name, Role, Year/Branch, Contributions`) for all 6 teams (`02-teams/*.md`).
- [ ] Record private organizer/vendor/sponsor phone numbers & emails in `10-appendices/contact-directory-INTERNAL.md` ONLY.
- [ ] Confirm exact event dates, competition mode (`Online/Offline/Hybrid`), and venue halls at BIT Mesra.
- [ ] Archive copy of approved BIT Mesra administrative permission letter and event concept note (`01.1`).
- [ ] Log minutes for every planning meeting in `01-planning-and-preparation/meeting-minutes/`.
- [ ] Capture group photos of all 6 organizing teams (`Fig 2.1`–`Fig 2.6`).

### A2. Outreach, PR, Sponsorship & Participant Lifecycle
- [ ] Document eligibility criteria, registration dates, and team formation rules (`03.1`, `03.2`).
- [ ] Archive official Rulebook sent to participants and communication email templates (`03.4`, `04.1`).
- [ ] Record brand hex codes, fonts, posters, and print dimensions (`05.2`).
- [ ] Log social media handles and pre-event campaign posts (`05.1`).
- [ ] Record college & community outreach list (`05.3`).
- [ ] Populate sponsorship tier table, confirmed sponsors, and initialize [Sponsor Deliverable Tracker](../templates/sponsor-deliverable-tracker.md) (`05.4`).
- [ ] Record planned budget revenue and cost estimates (`01.3`).

### A3. Technical & Logistics Readiness (T-3 to T-1 Days)
- [ ] Document CTF platform architecture, cloud VM specs, and container isolation stack (`04.2`).
- [ ] Verify every challenge has a completed [Challenge Documentation & Write-Up](../templates/challenge-documentation-template.md) and independent peer playtest sign-off (`04.3`).
- [ ] Document dynamic scoring parameters ($V_{\max}, V_{\min}, S_{\text{decay}}$) and anti-cheat controls (`04.4`, `04.5`).
- [ ] Lock minute-by-minute Run of Show (`06.3`) and Volunteer Duty Roster (`06.4`).
- [ ] Verify venue floor plan (`06.1`), network/port whitelist (`06.2`), catering headcount (`06.5`), and safety checklist (`06.6`).
- [ ] Capture T-1 venue setup, network setup, and first-aid station photos (`Fig 6.1`, `Fig 6.2`, `Fig 6.6`).

---

## Phase B: During the Event (Live Execution in Early December 2026)

### B1. Ceremonies & Check-In
- [ ] Record total checked-in teams and on-ground attendance at Registration Desk (`03.3`).
- [ ] Log Chief Guest, Faculty Advisors, and Sponsor speakers at the Inauguration Ceremony (`07.2`).
- [ ] Capture Inauguration lamp lighting, guest felicitation, and rules briefing photos (`Fig 0.4`, `Fig 4.1`, `Fig 7.2`).

### B2. Live Competition Hours
- [ ] Maintain continuous hour-by-hour operational log in [07.1 Day-Wise Report](../../07-event-days/day-wise-report.md).
- [ ] Record exact timestamps of Wave 1, Wave 2, and Wave 3 challenge releases and First Bloods.
- [ ] Capture screenshots of peak Grafana server telemetry (`Fig 4.2`), active Discord support ticket desk (`Fig 3.4`), and live scoreboard (`Fig 4.4`).
- [ ] Log every technical issue/bug (`TECH-XX` in `04.6`) and operational/disciplinary incident (`INC-XXX` in `07.4`) in real time.
- [ ] Photograph sponsor banners/booths (`Fig 5.4`) and verify all event-day sponsor deliverables in the tracker.
- [ ] Capture wide-angle arena photos, team collaboration shots, war-room debugging, and hospitality counters (`Fig 3.2`, `Fig 4.6`, `Fig 6.5`, `Fig 7.1`).

### B3. Competition Close & Prize Distribution
- [ ] Export raw and verified final leaderboard CSV/JSON snapshots immediately at competition close.
- [ ] Document write-up verification and anti-cheat audit results (`04.5`, `08.1`).
- [ ] Record official podium winners and special award winners (`08.1`, `08.2`).
- [ ] Capture winners podium photos, closing ceremony stage, and full organizing committee group photo (`Fig 0.3`, `Fig 7.3`, `Fig 8.1`, `Fig 8.2`).

---

## Phase C: After the Event (Wrap-Up, Audit & Handover)

### C1. Surveys, Analytics & Financial Closure
- [ ] Distribute [Post-Event Feedback Form](../templates/post-event-feedback-form.md) to participants, volunteers, and sponsors (`08.3`).
- [ ] Generate and embed final charts for Registration Funnel (`Fig 3.3`), Challenge Solves (`Fig 4.3`), Feedback Ratings (`Fig 8.3`), and Financial Reconciliation (`Fig 8.4`).
- [ ] Complete planned vs. actual financial statement and verify all GST bills/invoices (`08.4`).
- [ ] Confirm 100% completion of cash prize transfers and digital certificate issuance (`08.2`).

### C2. Retrospective & Final Publication
- [ ] Conduct 6-team post-mortem debrief and populate `08.5 Lessons Learned` and `08.6 Recommendations for Next Edition`.
- [ ] Verify that **0 open `TBD` items** remain in [missing-information-tracker.md](../missing-information-tracker.md).
- [ ] Verify all 45 photos in [09.1 Photo Index](../../09-media/photo-index.md) are uploaded, compressed (`≤ 500 KB`), and credited.
- [ ] Run `./scripts/build-docs.ps1 -Target all` to generate the final **Full Documentation PDF/DOCX**, **One-Page Executive Summary**, and **5–10 Page Sponsor/College Report**.
- [ ] Obtain final sign-off from Faculty Advisor and IEEE Branch Counselor and archive repository for the 2027 committee (`Fig 8.6`).
