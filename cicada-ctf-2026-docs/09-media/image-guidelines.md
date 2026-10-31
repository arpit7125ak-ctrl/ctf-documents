# Image Guidelines and Master Photo Shot List

## 1. Overview
This guide defines the mandatory technical specifications, file naming conventions, directory structure, privacy/consent policies, and section-by-section **Master Photo Shot List** for all photographers and media contributors of **Cicada CTF 2026**.

## 2. Responsible Team and Members
- **Primary Owner:** PR & Design Team (Photography Lead) & Documentation Team (Media Archivist)
> ⚠️ TBD: Assign Lead Event Photographers for each shift | Owner: PR & Design Team | Due: 2026-11-15

## 3. Timeline
- **Guidelines Effective Date:** 2026-11-01 (Applies to all planning, preparation, event-day, and post-event media).

## 4. Detailed Description
### 4.1 File Naming Convention
Every image committed to the repository **must** follow this exact lowercase naming pattern:
```text
YYYYMMDD_phase_team_description_number.jpg
```
- **`YYYYMMDD`**: 8-digit capture date (e.g., `20261205`).
- **`phase`**: One of four lifecycle phases:
  - `planning` (Ideation, committee meetings, team formation)
  - `preparation` (Portal launch, outreach drives, venue/network setup)
  - `event-days` (Inauguration, live competition, war room, closing ceremony)
  - `post-event` (Analytics charts, retrospective debrief, report handover)
- **`team`**: Responsible team folder name (`documentation`, `logistics`, `pr-and-design`, `sponsorship`, `outreach`, `development`).
- **`description`**: Short kebab-case summary (e.g., `inauguration-lamp-lighting`).
- **`number`**: 2-digit sequence number (`01`, `02`, etc.).

### 4.2 Markdown Embed & Caption Standard
Every image embedded in any section must use this exact two-line format:
```markdown
![Caption describing what is shown](../09-media/photos/<phase>/<team>/<suggested-filename>.jpg)
*Figure X.Y: <caption> | Date: <TBD> | Photo credit: <TBD>*
```

### 4.3 Technical Specifications (Resolution, Size & Compression)
| Parameter | Repository / PDF Standard | Archival Master (Cloud Drive) |
| :--- | :--- | :--- |
| **File Format** | `.jpg` (Photographs), `.png` (UI Screenshots/Charts if needed, saved with `.jpg` alias or converted) | RAW (`.CR2`/`.ARW`) + Uncompressed `.jpg`/`.png` |
| **Dimensions** | `1920 x 1080 px` (16:9) or `1920 x 1280 px` (3:2) | Original Camera Sensor Resolution |
| **Max File Size (Git Repo)** | `≤ 500 KB` per image (keeps Git repository and PDF exports lightweight) | Unrestricted |
| **Color Profile** | `sRGB IEC61966-2.1` | `sRGB` / `AdobeRGB` |
| **Compression Quality** | `80–85%` JPEG quality (use `mozjpeg`, `ImageMagick`, or `squoosh.app`) | `100%` |

### 4.4 Privacy, Security & Consent Policy
1. **Participant & Guest Consent:**
   - Include a clear **Media Release & Photography Notice** on the event registration form and on signage at the venue entrance.
   - Any participant who opts out of close-up photography must be given a distinct lanyard sticker (e.g., red dot) so photographers avoid close-up portraits of them.
2. **Zero Credential / Flag Exposure in Screenshots & Photos:**
   - **CRITICAL:** Before committing any photo of a laptop screen, projector, or the Technical War Room, inspect at 100% zoom to ensure **no SSH keys, cloud API tokens, database passwords, unreleased flags, or personal phone numbers/emails** are visible. Blur/redact sensitive regions prior to upload.

---

### 4.5 Master Photo Shot List (What to Capture for Every Section)

#### Phase 1: Planning (`09-media/photos/planning/`)
- [ ] **Fig 0.1 / 0.2 (`pr-and-design`):** Official event banner, logo reveal, and format overview infographic.
- [ ] **Fig 1.1 (`documentation`):** Core committee brainstorming around a whiteboard or projector during ideation.
- [ ] **Fig 1.2 (`logistics`):** Team leads reviewing the master timeline / Gantt chart.
- [ ] **Fig 1.3 (`sponsorship`):** Sponsorship and finance leads reviewing the budget sheet.
- [ ] **Fig 1.4 / 1.5 (`documentation`):** Kickoff meeting wide shot and scribe recording meeting minutes.
- [ ] **Fig 2.1 – 2.6 (All 6 Teams):** Formal and candid group photos of each of the six organizing teams (`Documentation`, `Logistics`, `PR & Design`, `Sponsorship`, `Outreach`, `Development`).

#### Phase 2: Preparation (`09-media/photos/preparation/`)
- [ ] **Fig 3.1 (`outreach`):** Clean screenshot of the live Cicada CTF 2026 registration portal.
- [ ] **Fig 5.1 (`pr-and-design`):** Collage/grid of social media posts and teaser reels.
- [ ] **Fig 5.2 (`pr-and-design`):** Flat-lay photograph of printed ID cards, lanyards, stickers, certificates, and standees.
- [ ] **Fig 5.3 (`outreach`):** Outreach desk / classroom promotion or pre-CTF orientation session at BIT Mesra.
- [ ] **Fig 6.1 (`logistics`):** Empty competition hall set up with desks, stage backdrop, and directional signage (T-1 day).
- [ ] **Fig 6.2 (`logistics`):** Network switches, extension board routing, and scoreboard projector test.
- [ ] **Fig 6.6 (`logistics`):** Helpdesk with stocked First-Aid kit, fire extinguisher, and emergency contact sheet.

#### Phase 3: Event Days (`09-media/photos/event-days/`)
- [ ] **Fig 0.3 (`documentation`):** Full organizing committee + volunteers + faculty advisors on stage.
- [ ] **Fig 0.4 / 7.2 (`logistics`):** Dignitary arrival, lamp lighting, felicitation of Chief Guest/Faculty/Sponsors.
- [ ] **Fig 3.2 (`outreach`):** Candid shots of 3–4 participant teams intensely collaborating at their desks.
- [ ] **Fig 3.4 (`outreach`):** Screenshot (PII-redacted) of active Discord announcements and support ticket resolution.
- [ ] **Fig 4.1 (`development`):** Development Team lead delivering the technical & rules briefing before T-0.
- [ ] **Fig 4.2 (`development`):** Live Grafana/Prometheus server load dashboard during peak competition hours.
- [ ] **Fig 4.4 (`development`):** Live projected leaderboard showing top teams battling for first place.
- [ ] **Fig 4.5 / 4.6 (`development`):** Inside the Technical War Room—engineers debugging containers and auditing write-ups.
- [ ] **Fig 5.4 (`sponsorship`):** Sponsor standees, stage logos, sponsor stalls, or sponsor keynote address.
- [ ] **Fig 6.3 (`logistics`):** Big screen countdown hitting `00:00:00` at competition kickoff.
- [ ] **Fig 6.4 (`logistics`):** Volunteer huddle/briefing and volunteers assisting participants at the registration desk.
- [ ] **Fig 6.5 (`logistics`):** Meal distribution / midnight coffee counter during the competition.
- [ ] **Fig 7.1 (`documentation`):** High-angle wide shot of the entire competition arena at peak occupancy.
- [ ] **Fig 7.3 (`logistics`):** Closing ceremony address and Vote of Thanks.
- [ ] **Fig 7.4 (`documentation`):** Documentation & Logistics command desk logging hourly checkpoints.
- [ ] **Fig 8.1 / 8.2 (`pr-and-design` / `logistics`):** 1st, 2nd, and 3rd place winning teams on stage holding trophies and cheques with dignitaries.

#### Phase 4: Post-Event (`09-media/photos/post-event/`)
- [ ] **Fig 3.3 (`outreach`):** Exported high-res chart of the Registration & Shortlisting Funnel.
- [ ] **Fig 4.3 (`development`):** Exported high-res chart of Challenge Solves by Category & Difficulty.
- [ ] **Fig 8.3 (`documentation`):** Exported high-res chart of Participant Feedback Survey ratings.
- [ ] **Fig 8.4 (`sponsorship`):** Exported high-res chart of Budget vs. Actual Financial Reconciliation.
- [ ] **Fig 8.5 (`documentation`):** Post-mortem retrospective meeting of the six team leads.
- [ ] **Fig 8.6 (`documentation`):** Formal handover of the printed/bound Cicada CTF 2026 Report to BIT Mesra Faculty Advisor.

## 5. Decisions Made and Why
- **Decision:** Cap repository image size at `500 KB` (`1920x1080` JPEG) while keeping uncompressed originals in a shared cloud drive.
- **Rationale:** Keeps Git clone times fast and ensures Pandoc PDF exports stay under email attachment limits (`< 25 MB`).

## 6. Challenges Faced and How They Were Solved
> ⚠️ TBD: Record any low-light arena photography challenges or consent opt-out cases | Owner: PR & Design Team | Due: Post-Event

## 7. Outcomes and Metrics
- **Shot List Completion Rate (%):** `TBD`

## 8. Photo/Media Section
*This document governs all media capture.*

## 9. Lessons Learned
> ⚠️ TBD: Note photography shift scheduling takeaways | Owner: PR & Design Team | Due: Post-Event

## 10. Open Items / TBD
> ⚠️ TBD: Brief all event photographers on this shot list at least 3 days before the event | Owner: PR & Design Team Lead | Due: Late Nov 2026
