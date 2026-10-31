# Documentation Style Guide

## 1. Overview
This style guide defines the mandatory writing, formatting, heading, naming, citation, privacy, and versioning rules for everyone contributing to the **Cicada CTF 2026** documentation repository.

---

## 2. Tone, Voice & Tense Rules
1. **Professional, Neutral, Evidence-Based Tone:** Write clearly and objectively. Avoid hyperbolic marketing claims ("the greatest CTF ever"), slang, or unverified superlatives. Let verified metrics tell the story.
2. **Verb Tense Convention:**
   - **Future / Present Tense:** Use for planned activities prior to execution (e.g., *"The Development Team will deploy challenges in three waves"*).
   - **Past Tense:** Convert sections to past tense immediately after an activity is completed (e.g., *"The Development Team deployed 28 challenges across three waves"*).
3. **Active Voice:** Prefer active voice attributing actions to specific teams (e.g., *"The Logistics Team configured 12 network switches"* rather than *"Switches were configured"*).

---

## 3. Zero-Fabrication & Placeholder Standard
- **Never** invent or guess names, dates, participant counts, budget numbers, sponsor names, scores, or outcomes.
- Whenever a piece of information is not yet confirmed, insert the exact callout block:
  ```markdown
  > ⚠️ TBD: <what is needed> | Owner: <team> | Due: <date>
  ```
- Every `TBD` added to any file must have a corresponding entry in [10.3 Missing Information Tracker](../missing-information-tracker.md).

---

## 4. Mandatory 10-Part Section Structure
Every core document in Sections `00` through `08` must contain these 10 numbered H2 (`##`) headings in order:
1. `## 1. Overview` (2–4 sentences explaining the section's purpose)
2. `## 2. Responsible Team and Members`
3. `## 3. Timeline`
4. `## 4. Detailed Description` (Sub-sections `### 4.1`, `### 4.2`, tables, and Mermaid diagrams)
5. `## 5. Decisions Made and Why`
6. `## 6. Challenges Faced and How They Were Solved`
7. `## 7. Outcomes and Metrics`
8. `## 8. Photo/Media Section`
9. `## 9. Lessons Learned`
10. `## 10. Open Items / TBD`

*(Note: Team pages in `02-teams/` also incorporate the mandatory Team Page sections: Mission & Responsibilities, Member Table, Workflow & Tools, Key Deliverables, and Collaboration with Other Teams.)*

---

## 5. Markdown Formatting Conventions
- **Headings:**
  - Single `# H1` at the top of each file matching the document title.
  - `## H2` for top-level numbered sections (`1.` through `10.`).
  - `### H3` for sub-sections (`4.1`, `4.2`). Do not skip heading levels (`H2` → `H4`).
- **Tables:** Always include a header row and alignment row (`| :--- | :--- |`). Use backticks around IDs (`TBD-001`, `WEB-01`), code, or paths.
- **Dates & Times:**
  - Use ISO 8601 date format `YYYY-MM-DD` (e.g., `2026-12-05`) in tables and metadata.
  - Use 24-hour clock with `IST` timezone (`14:30 IST`) for all schedules and logs.
- **Currency:** Format Indian Rupees as `₹ XX,XXX` or `INR XX,XXX`.
- **Diagrams:** Use fenced `mermaid` blocks (`flowchart TD`, `flowchart LR`, `sequenceDiagram`, `xychart-beta`). Always quote node labels containing parentheses or special characters: `A["Label (Info)"]`.

---

## 6. File, Folder & Image Naming Conventions
- **Directories:** Two-digit prefix + lowercase kebab-case (`04-technical`, `08-results-and-post-event`).
- **Markdown Files:** Lowercase kebab-case (`platform-and-infrastructure.md`), except `README.md` and `contact-directory-INTERNAL.md`.
- **Images:** `YYYYMMDD_phase_team_description_number.jpg` (see [09.2 Image Guidelines](../../09-media/image-guidelines.md)).

---

## 7. Citation of Sources & Evidence
When stating a metric, decision, or incident in the documentation, cite its primary internal source:
- Meeting decisions → Link to `01-planning-and-preparation/meeting-minutes/NNN-...md` (`Decision ID: MM001-D1`).
- Technical issues → Reference `TECH-XX` in `04-technical/technical-issues-and-resolutions.md`.
- Operational incidents → Reference `INC-XXX` in `07-event-days/incidents-log.md`.

---

## 8. Privacy & PII Protection
- **Public Documents (`00`–`09`):** May contain organizer/winner **Names**, **Roles**, **Year/Branch**, and **Institution Names**.
- **Strictly Prohibited in Public Documents:** Personal phone numbers, personal email addresses, residential addresses, bank account/UPI details, or unredacted student ID numbers. Store organizer/partner contact info only in `10-appendices/contact-directory-INTERNAL.md`.

---

## 9. Versioning Policy (Semantic Documentation Versioning)
- `v0.1.0-draft`: Initial folder structure, templates, and TBD tracker generated.
- `v0.5.0-pre-event`: Team rosters, planning, rules, and pre-event sections populated prior to kickoff.
- `v0.9.0-post-event`: Event-day logs, final results, winners, and feedback populated.
- `v1.0.0-final`: All TBDs resolved, faculty & IEEE sign-off completed, PDF/DOCX published.
