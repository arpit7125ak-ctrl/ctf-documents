# Template: Incident Report

> **Instructions:** Complete this form for any `SEV-1`/`SEV-2` technical outage, disciplinary disqualification, venue/network failure, or safety/medical event during **Cicada CTF 2026**. Summarize all filed reports in [07.4 Incidents Log](../../07-event-days/incidents-log.md) or [04.6 Technical Issues and Resolutions](../../04-technical/technical-issues-and-resolutions.md).

---

## 1. Incident Identification

| Field | Details |
| :--- | :--- |
| **Incident ID** | `INC-<NNN>` *(or `TECH-<NN>`)* |
| **Date & Time Detected (IST)** | `YYYY-MM-DD HH:MM IST` |
| **Date & Time Resolved (IST)** | `YYYY-MM-DD HH:MM IST` |
| **Total Duration (Minutes)** | `<N mins>` |
| **Incident Category** | `[ ] Technical/Platform  [ ] Venue/Logistics  [ ] Disciplinary/Cheating  [ ] Safety/Medical` |
| **Severity Level** | `[ ] SEV-1 (Critical)  [ ] SEV-2 (High)  [ ] SEV-3 (Medium)  [ ] SEV-4 (Low)` |
| **Reported By** | `<Name & Team>` |
| **Incident Commander / Owner** | `<Name & Team>` |
| **Current Status** | `[ ] Open / Investigating  [ ] Mitigated  [ ] Resolved & Closed` |

---

## 2. Executive Summary of Incident
`<Provide a factual, 2–4 sentence summary of what happened, what systems/participants were affected, and the final outcome.>`

---

## 3. Incident Timeline (Minute-by-Minute)
| Timestamp (IST) | Event / Action Taken | Actor |
| :--- | :--- | :--- |
| `HH:MM` | Anomaly / incident first detected via `<Grafana alert / Discord ticket / Floor volunteer>` | `<Name>` |
| `HH:MM` | Escalated to `<Team Lead / Faculty Advisor>` | `<Name>` |
| `HH:MM` | Mitigation action executed: `<Describe action>` | `<Name>` |
| `HH:MM` | Normal operations verified and incident closed | `<Name>` |

---

## 4. Root Cause Analysis (RCA)
- **Primary Cause:** `<What directly triggered the issue?>`
- **Contributing Factors:** `<Were there underlying configuration, load, vendor, or rule gaps?>`
- **Impact Assessment:**
  - Participants / Teams Affected: `<Number or % of teams>`
  - Scoreboard / Competition Impact: `<None / Point adjustment / Time extension>`

---

## 5. Resolution & Corrective Actions
- **Immediate Fix Applied:** `<How was the issue resolved during the event?>`
- **Participant Communication Issued:** `<Copy of Discord/Stage announcement, if applicable>`

---

## 6. Preventive Recommendations for Next Edition
- [ ] `<Preventive control 1>`
- [ ] `<Preventive control 2>`

---

## Sign-Off
- **Prepared By:** `<Name, Role>` | **Date:** `YYYY-MM-DD`
- **Reviewed By (Team Lead / Core):** `<Name, Role>` | **Date:** `YYYY-MM-DD`
