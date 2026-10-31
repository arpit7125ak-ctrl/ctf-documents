# Security and Anti-Cheating

## 1. Overview
This section details the defensive security posture, container isolation controls, dynamic/canary flag techniques, submission telemetry analysis, and write-up verification procedures implemented to ensure fair play during **Cicada CTF 2026**.

## 2. Responsible Team and Members
- **Primary Owner:** Development Team (Security & Anti-Cheat Lead)
> ⚠️ TBD: Assign Anti-Cheat & Audit Lead from Development Team | Owner: Development Team | Due: 2026-11-10

## 3. Timeline
| Milestone | Target Date | Status |
| :--- | :--- | :--- |
| Anti-Cheat Telemetry & Dynamic Flag Setup | `TBD (Late Nov 2026)` | Pending |
| Infrastructure Penetration Test / Hardening Audit | `TBD (Late Nov 2026)` | Pending |
| Live Submission Anomaly Monitoring | `TBD (Early Dec 2026)` | Planned |
| Post-CTF Write-Up & Flag Audit | `TBD (Early Dec 2026)` | Planned |

## 4. Detailed Description
### 4.1 Multi-Layered Anti-Cheating Controls
1. **Per-Team Dynamic Flags *(where supported)*:** Instanced challenges generate unique team-specific flags using cryptographic HMAC tokens tied to the team ID, immediately exposing cross-team flag submissions.
2. **Submission Telemetry Analysis:** Automated correlation of:
   - Cross-team submission of another team's dynamic flag.
   - Rapid burst submissions across multiple categories without corresponding artifact downloads or container connections.
   - IP address and user-agent correlation across distinct teams.
3. **Mandatory Write-Up & Exploit Verification:** Prize-eligible teams must submit reproducible write-ups and solver scripts before final results are certified.
4. **On-Site Proctoring *(if Offline/Hybrid)*:** Floor volunteers and technical proctors monitor the competition venue.

### 4.2 Infrastructure Security Controls
- **Network Segmentation:** Challenge containers run in isolated VPC subnets / Docker networks with egress traffic blocked (except where required by challenge design) to prevent reverse shells from pivoting internally.
- **WAF & Rate Limiting:** Cloudflare + Nginx rate limits on `/api/v1/challenges/attempt` and authentication endpoints.

## 5. Decisions Made and Why
> ⚠️ TBD: Document decisions on dynamic vs. static flags per category and disqualification escalation thresholds | Owner: Development Team | Due: 2026-11-20

## 6. Challenges Faced and How They Were Solved
> ⚠️ TBD: Record any attempted infrastructure attacks, flag-sharing incidents detected, or false-positive alerts | Owner: Development Team | Due: Post-Event

## 7. Outcomes and Metrics
| Security / Fair-Play Metric | Count |
| :--- | :--- |
| Suspicious Submission Alerts Triggered | `TBD` |
| Confirmed Flag-Sharing / Cheating Incidents | `TBD` |
| Teams Disqualified After Audit | `TBD` |
| Winner Write-Ups Verified | `TBD` |
| Blocked Malicious / Brute-Force Requests | `TBD` |

## 8. Photo/Media Section
![Anti-Cheat Telemetry and Write-Up Verification Review](../09-media/photos/event-days/development/20261206_event-days_development_anticheat-audit-review_01.jpg)
*Figure 4.5: Development Team Reviewing Submission Telemetry and Winner Write-Ups | Date: TBD | Photo credit: TBD*

## 9. Lessons Learned
> ⚠️ TBD: Document takeaways on dynamic flag generation and write-up verification turnaround times | Owner: Development Team | Due: Post-Event

## 10. Open Items / TBD
> ⚠️ TBD: Confirm list of challenges utilizing per-team dynamic flags vs. static flags | Owner: Development Team | Due: 2026-11-25
