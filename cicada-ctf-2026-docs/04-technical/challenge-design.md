# Challenge Design

## 1. Overview
This section catalogs the design methodology, category distribution, difficulty balancing, authoring workflow, peer-testing protocol, and final challenge inventory for **Cicada CTF 2026** across Web Exploitation, Cryptography, Binary Exploitation (Pwn), Reverse Engineering, Forensics, OSINT, and Miscellaneous categories.

## 2. Responsible Team and Members
- **Primary Owner:** Development Team (Challenge Authors & Category Leads)
> ⚠️ TBD: List Category Leads and Challenge Authors from the Development Team | Owner: Development Team | Due: 2026-11-10

## 3. Timeline
| Milestone | Target Date | Status |
| :--- | :--- | :--- |
| Challenge Matrix & Quota Allocation | `TBD` | Pending |
| Challenge Alpha Submission (Code + Write-up) | `TBD (Mid Nov 2026)` | Pending |
| Blind Peer Playtesting & QA Review | `TBD (Late Nov 2026)` | Pending |
| Challenge Freeze & Production Upload | `TBD (T-3 Days)` | Planned |
| Official Solutions / Write-ups Published | `TBD (Post-Event)` | Planned |

## 4. Detailed Description
### 4.1 Challenge Categories & Target Distribution
| Category | Easy | Medium | Hard | Insane / Boss | Total Planned | Total Deployed |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **Web Exploitation (`Web`)** | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` |
| **Cryptography (`Crypto`)** | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` |
| **Binary Exploitation (`Pwn`)** | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` |
| **Reverse Engineering (`Rev`)** | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` |
| **Digital Forensics (`Forensics`)** | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` |
| **OSINT (`OSINT`)** | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` |
| **Miscellaneous (`Misc`)** | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` | `TBD` |
| **Total** | **`TBD`** | **`TBD`** | **`TBD`** | **`TBD`** | **`TBD`** | **`TBD`** |

### 4.2 Quality Assurance & Peer-Testing Workflow
Every challenge authored for Cicada CTF 2026 must adhere to the [Challenge Documentation Template](../10-appendices/templates/challenge-documentation-template.md) and pass a strict 4-step gate:
1. **Reproducible Build:** Dockerfile/artifact builds cleanly from source.
2. **Automated Solver (`solve.py`):** Author provides a working exploit/solver script that retrieves the flag automatically.
3. **Blind Peer Test:** A second Development Team member tests the challenge from participant artifacts alone to verify solvability, eliminate guesswork, and check for unintended solutions.
4. **Healthcheck Integration:** Automated healthcheck script verifies service availability every `N` minutes during the live event.

### 4.3 Master Challenge Catalog
| Chall ID | Challenge Name | Category | Difficulty | Author | Tester | Release Wave | Total Solves | First Blood Team |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| `WEB-01` | `TBD` | Web | Easy | `TBD` | `TBD` | Wave 1 | `TBD` | `TBD` |
| `CRY-01` | `TBD` | Crypto | Easy | `TBD` | `TBD` | Wave 1 | `TBD` | `TBD` |
| `PWN-01` | `TBD` | Pwn | Medium | `TBD` | `TBD` | Wave 1 | `TBD` | `TBD` |
| `REV-01` | `TBD` | Reverse | Medium | `TBD` | `TBD` | Wave 1 | `TBD` | `TBD` |
| `FOR-01` | `TBD` | Forensics | Easy | `TBD` | `TBD` | Wave 1 | `TBD` | `TBD` |
| `OSI-01` | `TBD` | OSINT | Easy | `TBD` | `TBD` | Wave 1 | `TBD` | `TBD` |
| `MSC-01` | `TBD` | Misc | Easy | `TBD` | `TBD` | Wave 1 | `TBD` | `TBD` |

## 5. Decisions Made and Why
> ⚠️ TBD: Document decisions on challenge difficulty distribution, hint policy (free vs. point-deduction vs. wave-based hints), and OSINT scoping rules | Owner: Development Team | Due: 2026-11-18

## 6. Challenges Faced and How They Were Solved
> ⚠️ TBD: Record any challenges that had unintended solutions ("cheese"), required hotfix patches (`v2` re-releases), or had zero solves | Owner: Development Team | Due: Post-Event

## 7. Outcomes and Metrics
- **Total Challenges Deployed:** `TBD`
- **Challenges with ≥1 Solve:** `TBD`
- **Unsolved (0-Solve) Challenges:** `TBD`
- **Most Solved Challenge:** `TBD`
- **Least Solved (Solved) Challenge:** `TBD`

## 8. Photo/Media Section
![Challenge Category and Solve Distribution Chart](../09-media/photos/post-event/development/20261208_post-event_development_challenge-solve-distribution_01.jpg)
*Figure 4.3: Challenge Category Breakdown and Solve Distribution Across Difficulty Tiers | Date: TBD | Photo credit: TBD*

## 9. Lessons Learned
> ⚠️ TBD: Capture insights on difficulty calibration and peer playtesting lead time | Owner: Development Team | Due: Post-Event

## 10. Open Items / TBD
> ⚠️ TBD: Populate planned challenge quotas per category and difficulty | Owner: Development Team | Due: 2026-11-15
> ⚠️ TBD: Populate final Master Challenge Catalog and solve counts post-event | Owner: Development Team | Due: Post-Event
