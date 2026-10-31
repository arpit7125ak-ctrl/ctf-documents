# Glossary of Terms

## 1. Overview
This glossary defines technical cybersecurity acronyms, Capture The Flag (CTF) competition terminology, and institutional abbreviations used throughout the **Cicada CTF 2026** documentation package, ensuring clarity for non-technical readers, college administrators, and corporate sponsors.

## 2. Responsible Team and Members
- **Primary Owner:** Documentation Team & Development Team

## 3. Timeline
- **Baseline Published:** 2026-11-01
- **Updated:** Ongoing as new technical or operational terms are introduced.

## 4. Detailed Description — Alphabetical Glossary

| Term / Acronym | Full Form / Category | Definition |
| :--- | :--- | :--- |
| **Attack-Defense CTF** | Competition Format | A CTF format where each team defends its own vulnerable server instances while simultaneously exploiting identical services hosted by opposing teams. |
| **Binary Exploitation (`Pwn`)** | Challenge Category | Challenges involving memory corruption vulnerabilities (e.g., buffer overflows, Use-After-Free, ROP chains) in compiled binaries to achieve arbitrary code execution. |
| **BIT Mesra** | Institution | Birla Institute of Technology, Mesra (Ranchi, Jharkhand) — host university of Cicada CTF 2026. |
| **Canary / Dynamic Flag** | Anti-Cheat Mechanism | A unique, cryptographically generated flag assigned per team instance so that cross-team flag sharing can be immediately traced to the source team. |
| **Crypto (Cryptography)** | Challenge Category | Challenges focused on mathematical encryption schemes, hashing flaws, padding oracles, RSA/ECC weaknesses, and cipher cryptanalysis. |
| **CTF** | Capture The Flag | A competitive cybersecurity contest in which participants exploit vulnerabilities or solve security puzzles to retrieve hidden text strings called "flags." |
| **CTFd** | Platform Software | An open-source Capture The Flag scoreboard and challenge management framework. |
| **CTFtime** | Global Aggregator | The international archive and ranking portal for academic and competitive Capture The Flag events (`ctftime.org`). |
| **Dynamic Scoring** | Scoring Mechanism | A scoring system where every challenge starts at a maximum point value (e.g., 500 pts) and automatically decreases in value as more teams solve it. |
| **First Blood** | Competition Milestone | The first valid flag submission recorded for a specific challenge across the entire competition. |
| **Flag** | Competition Artifact | A secret string conforming to the event format (e.g., `cicada{s0m3_s3cr3t_str1ng}`) that proves a participant has successfully solved a challenge. |
| **Forensics** | Challenge Category | Digital forensics challenges involving memory dumps, network packet captures (`PCAP`), disk images, file carving, and log analysis. |
| **Healthcheck** | DevOps / QA | An automated script that periodically connects to a live challenge container and verifies that the intended exploit path still returns the flag. |
| **IEEE** | Organizing Body | Institute of Electrical and Electronics Engineers; represented at the host institution by the **IEEE Student Branch of BIT Mesra**. |
| **Instancer / Challenge Spawner** | Infrastructure | A container orchestration service (`kCTF`, `Chall-Manager`, Docker API) that spins up an isolated sandbox container per team on demand. |
| **Jeopardy-Style CTF** | Competition Format | A CTF format where challenges are organized by category and point value on a board, and teams earn points by submitting flags for independent problems. |
| **Misc (Miscellaneous)** | Challenge Category | Challenges spanning jailed environments (`pyjail`/`bashjail`), hardware/RF, esoteric programming, blockchain, or hybrid security puzzles. |
| **MoU** | Partnership Document | Memorandum of Understanding — a formal agreement between the Cicada CTF 2026 committee and a sponsor or community partner outlining deliverables. |
| **nsjail** | Container Security | A lightweight process isolation tool utilizing Linux namespaces, cgroups, and `seccomp-bpf` syscalls to sandbox untrusted Pwn challenge connections. |
| **OSINT** | Open-Source Intelligence | Challenges requiring investigation of publicly available records, geolocation, domain registries, and digital footprints. |
| **Rev (Reverse Engineering)** | Challenge Category | Challenges requiring decompilation, disassembly, and static/dynamic analysis of compiled binaries, bytecode, or obfuscated firmware. |
| **Run of Show (RoS)** | Operations | A minute-by-minute master execution schedule coordinating stage cues, technical wave releases, and volunteer tasks on event days. |
| **Scoreboard Freeze** | Competition Rule | Hiding public leaderboard updates during the final hour(s) of the competition to build suspense before the closing ceremony reveal. |
| **Unintended Solution ("Cheese")** | Challenge QA | A method of retrieving a challenge flag by bypassing the author's intended vulnerability due to a configuration mistake or oversight. |
| **Web Exploitation (`Web`)** | Challenge Category | Challenges targeting web application vulnerabilities such as SQL Injection (`SQLi`), Cross-Site Scripting (`XSS`), `SSRF`, deserialization, and logic flaws. |
| **Write-Up** | Post-Event Deliverable | A detailed technical report and solver script authored by a team (or challenge creator) explaining step-by-step how a challenge was solved. |

## 5. Decisions Made and Why
- **Decision:** Include both cybersecurity technical terms and event management terms in a single unified glossary.
- **Rationale:** Helps non-technical stakeholders (administration, sponsors) understand technical reports, and helps technical members understand operational/sponsorship terms.

## 6. Challenges Faced and How They Were Solved
*None.*

## 7. Outcomes and Metrics
- **Total Terms Defined:** 26 core terms.

## 8. Photo/Media Section
*Not applicable.*

## 9. Lessons Learned
- Defining acronyms upfront reduces ambiguity across cross-functional student teams.

## 10. Open Items / TBD
> ⚠️ TBD: Add event-specific flag format or custom tool names once finalized by the Development Team | Owner: Documentation Team | Due: 2026-11-15
