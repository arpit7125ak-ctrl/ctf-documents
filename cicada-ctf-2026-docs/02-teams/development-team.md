# Development Team

## 1. Overview
The **Development Team** is the technical core of **Cicada CTF 2026**. Led by **Kishan** (Platform & Infrastructure) and **Bhavya Varshney** (Challenge & Question Design), the team architects, deploys, secures, and monitors the competition platform, container orchestration, and anti-cheat systems, while authoring, testing, and maintaining all cybersecurity challenges across categories (Web, Crypto, Pwn, Reverse Engineering, Forensics, OSINT, and Misc).

---

## Team Mission and Responsibilities
- **Mission:** Engineer a resilient, high-availability CTF infrastructure and a rigorous, creative, and bug-free set of cybersecurity challenges that deliver an exceptional competitive hacking experience.
- **Core Responsibilities:**
  1. Deploy, customize, and scale the CTF scoreboard and challenge hosting platform (`CTFd / rCTF / Custom: TBD`).
  2. Provision cloud/on-premise servers, Docker/Kubernetes container isolation, load balancers, and DDoS mitigation.
  3. Design, author, peer-review, and playtest challenges across all competition categories using the [Challenge Documentation Template](../10-appendices/templates/challenge-documentation-template.md).
  4. Configure dynamic/static scoring formulas, flag formats, and automated health-check scripts.
  5. Monitor live infrastructure telemetry, detect flag sharing/cheating, handle technical support tickets, and validate winner write-ups.

---

## 2. Responsible Team and Members (Member Table)
The technical operations are organized into two coordinated sub-teams: **Platform & DevOps** and **Questions & Challenge Design**.
*(Note: Roll numbers and internal phone numbers are strictly archived in `10-appendices/contact-directory-INTERNAL.md` in compliance with privacy guidelines.)*

### 2.1 Platform & Infrastructure Sub-Team
| S.No. | Name | Role | Year / Branch | Key Contributions |
| :--- | :--- | :--- | :--- | :--- |
| 1 | **Kishan** | Dev Team Lead / Platform Architect | BIT Mesra (`Branch: TBD`) | CTF platform architecture, server deployment, system administration, and DevOps lead |
| 2 | **Harshit Singh Bhandari** | DevOps & Infrastructure Engineer | Chemical Engineering (Roll: `BTECH/10213/25`) | Cloud provisioning, Docker container management, and environment setup |
| 3 | **MD. Hamza Khan** | Infrastructure & Network Engineer | EEE (Roll: `BTECH/10215/25`) | Server monitoring, network connectivity, and failover management |

### 2.2 Questions & Challenge Design Sub-Team
| S.No. | Name | Role | Year / Branch | Key Contributions |
| :--- | :--- | :--- | :--- | :--- |
| 1 | **Bhavya Varshney** | Challenge Design Lead | BIT Mesra (Roll: `BTECH/10566/25`) | Challenge difficulty balancing, quality review, category quotas, and author coordination |
| 2 | **Aadity Setu** | Challenge Author / Tester | BIT Mesra (`Branch: TBD`) | Challenge authoring and independent peer playtesting |
| 3 | **Aditya Suman** | Challenge Author / Tester | BIT Mesra (`Branch: TBD`) | Challenge authoring and testing |
| 4 | **Arnav Kumar** | Challenge Author | AIML (Roll: `btech/11003/25`) | Challenge development, write-up creation, and solver script verification |
| 5 | **Swarnabh Guha** | Challenge Author | CSE (Roll: `Btech/10219/25`) | Challenge authoring, exploit verification, and category testing |
| 6 | **Venkatraman Balachandran** | Challenge Author | CSE (Roll: `btech1056725`) | Challenge authoring, binary analysis, and security verification |
| 7 | **Avinash Kumar** | Challenge Author / Tester | BIT Mesra (Roll: `Btech/10487/25`) | Challenge testing, problem validation, and hint design |
| 8 | **Ayush Dutta** | Challenge Author / Tester | BIT Mesra (`Branch: TBD`) | Challenge design and peer review |
| 9 | **Gyan Ranjan** | Challenge Author / Tester | BIT Mesra (`Branch: TBD`) | Challenge design and sandbox validation |
| 10 | **Paras Ahuja** | Challenge Author | AIML (Roll: `Btech/10883/25`) | Challenge development, algorithmic puzzles, and solution scripting |
| 11 | **Raunak Chandra** | Challenge Author | ECE (Roll: `BTECH/10922/25`) | Challenge development, signal/crypto/hardware puzzles, and testing |
| 12 | **Shivam Ranjan** | Challenge Author | BIT Mesra (Roll: `BTECH/10553/25`) | Challenge authoring and peer testing |
| 13 | **Vishal Singh** | Challenge Author | IMSc. Physics (Roll: `IPH/10007/25`) | Cryptography/mathematical challenge authoring and solver validation |

---

## Workflow and Tools Used
- **Platform & Orchestration:** `TBD (e.g., CTFd, Docker, Kubernetes, kCTF, nsjail, Nginx, Cloudflare)`
- **Version Control & CI/CD:** Private Git repository for challenge source code, Dockerfiles, health checks, and solution scripts.
- **Monitoring & Alerting:** `TBD (e.g., Prometheus, Grafana, Loki, Discord Webhook Alerts)`
- **Quality Assurance:** Mandatory peer-testing rule—every challenge must be solved independently by a reviewer other than its author prior to freeze.

---

## 3. Timeline (Timeline of Major Tasks)
| Task / Deliverable | Target Date | Status |
| :--- | :--- | :--- |
| Platform Selection & Cloud Architecture Design | `TBD` | Pending |
| Challenge Quota & Category Matrix Finalized | `TBD` | Pending |
| Challenge Alpha Freeze (Draft Challenges Committed) | `TBD (Mid Nov 2026)` | Pending |
| Peer Playtesting & Automated Solver Verification | `TBD (Late Nov 2026)` | Pending |
| Production Infrastructure Deployment & Load Test | `TBD (Late Nov 2026)` | Pending |
| Live CTF Operations, Wave Releases & Monitoring | `TBD (Early Dec 2026)` | Planned |
| Write-Up Verification & Infrastructure Decommissioning | `TBD (Mid Dec 2026)` | Planned |

---

## 4. Detailed Description & Key Deliverables
1. **CTF Rules & Format Specification:** Documented in [04.1 CTF Format and Rules](../04-technical/ctf-format-and-rules.md).
2. **Platform & Cloud Infrastructure Blueprint:** Documented in [04.2 Platform and Infrastructure](../04-technical/platform-and-infrastructure.md).
3. **Challenge Catalog & Testing Matrix:** Documented in [04.3 Challenge Design](../04-technical/challenge-design.md).
4. **Scoring Engine & Leaderboard Configuration:** Documented in [04.4 Scoring and Leaderboard](../04-technical/scoring-and-leaderboard.md).
5. **Security & Anti-Cheat Playbook:** Documented in [04.5 Security and Anti-Cheating](../04-technical/security-and-anti-cheating.md).
6. **Incident & Bug Resolution Log:** Documented in [04.6 Technical Issues and Resolutions](../04-technical/technical-issues-and-resolutions.md).

---

## Collaboration with Other Teams
| Partner Team | Collaboration Touchpoints |
| :--- | :--- |
| **Sponsorship Team** | Utilizing sponsored cloud credits and integrating sponsor-themed challenges or logos on the platform. |
| **Outreach Team** | Syncing registered team credentials, running Discord support ticket bots, and publishing platform instructions. |
| **Logistics Team** | Coordinating campus network bandwidth, local server power/cooling, and war-room setup during event days. |
| **PR & Design Team** | Integrating custom UI themes, countdown pages, and live scoreboard display screens. |
| **Documentation Team** | Providing sanitized challenge tables, architecture diagrams, uptime telemetry, and final scoreboard snapshots. |

---

## 5. Decisions Made and Why
- **Decision:** Separate the technical team into dedicated Platform/DevOps and Challenge Design sub-teams.
- **Rationale:** Ensures dedicated focus on infrastructure stability and container isolation without distracting challenge authors from puzzle design and peer-testing.

## 6. Challenges Faced and How They Were Solved (Challenges and Learnings)
> ⚠️ TBD: Document technical challenges (e.g., container resource exhaustion, unintended challenge solutions, DDoS attempts) and fixes | Owner: Development Team | Due: Post-Event

## 7. Outcomes and Metrics
- **Total Team Members:** 16 confirmed members (3 Platform + 13 Challenge Designers)
- **Total Challenges Deployed:** `TBD`
- **Platform Uptime During Competition (%):** `TBD`
- **Peak Concurrent Requests / Active Containers:** `TBD`
- **Unintended Solutions / Patched Challenges:** `TBD`

## 8. Photo/Media Section (Team Photo Placeholder)
![Development Team of Cicada CTF 2026 in the Technical War Room](../09-media/photos/planning/development/20261110_planning_development_team-group-photo_01.jpg)
*Figure 2.6: The Cicada CTF 2026 Development Team | Date: TBD | Photo credit: TBD*

## 9. Lessons Learned
> ⚠️ TBD: Capture technical engineering lessons for future CTF infrastructure and challenge design teams | Owner: Development Team | Due: Post-Event

## 10. Open Items / TBD
> ⚠️ TBD: Confirm academic branch and roll numbers for Kishan, Aadity Setu, Aditya Suman, Ayush Dutta, Gyan Ranjan | Owner: Development Team Leads | Due: 2026-11-10
> ⚠️ TBD: Confirm platform choice, hosting provider, and challenge count per category | Owner: Development Team Leads | Due: 2026-11-12
