# Template: Challenge Documentation & Write-Up

> **Instructions:** Every challenge authored by the **Development Team** for **Cicada CTF 2026** must include a `README.md` following this template in the private challenge repository. Sanitized summaries populate [04.3 Challenge Design](../../04-technical/challenge-design.md), and full write-ups can be published post-event.

---

## 1. Challenge Metadata

| Field | Specification |
| :--- | :--- |
| **Challenge ID** | `<e.g., WEB-01 / CRY-02 / PWN-01>` |
| **Challenge Title** | `<Challenge Name>` |
| **Category** | `[ ] Web  [ ] Crypto  [ ] Pwn  [ ] Reverse  [ ] Forensics  [ ] OSINT  [ ] Misc` |
| **Difficulty Tier** | `[ ] Easy  [ ] Medium  [ ] Hard  [ ] Insane` |
| **Author(s)** | `<Name / Handle>` |
| **Peer Reviewer / Playtester** | `<Name / Handle (Must be different from Author)>` |
| **Release Wave** | `[ ] Wave 1 (T+0h)   [ ] Wave 2   [ ] Wave 3` |
| **Point Configuration** | `Initial: <500> | Min: <100> | Decay: <S_decay>` |
| **Hosting Type** | `[ ] Static Artifact Only   [ ] Shared Container   [ ] Per-Team Instanced Container` |
| **Flag Format & Exact Flag** | `cicada{<exact_flag_string>}` *(or `[Dynamic HMAC Flag]`)* |
| **Testing Status** | `[ ] Draft   [ ] Ready for Peer Test   [ ] Playtested & Approved   [ ] Deployed` |

---

## 2. Public Challenge Description (Shown on Scoreboard)
> **Title:** `<Challenge Title>`  
> **Description:**  
> `<Exact flavor text and instructions displayed to participants on CTFd>`  
> **Connection Info:** `<e.g., https://web01.cicadactf.in or nc chall.cicadactf.in 1337>`  
> **Attachments Provided to Players (`dist/`):**  
> - `<filename.zip>` (`SHA256: <hash>`)

---

## 3. Technical Overview & Vulnerability Concept
- **Core Vulnerability / Concept Tested:** `<e.g., Blind SQL Injection via SQLite JSON functions / Heap tcache poisoning in glibc 2.35 / LLL Lattice reduction on biased ECDSA nonces>`
- **Learning Objective:** `<What cybersecurity skill does the player learn or demonstrate by solving this challenge?>`

---

## 4. Infrastructure & Deployment Requirements
- **Base Docker Image:** `<e.g., ubuntu:22.04 / python:3.11-slim / ghcr.io/google/nsjail>`
- **Exposed Ports:** `<Port / Protocol>`
- **Resource Limits (Per Container):** `CPU: <0.5 vCPU> | RAM: <256 MB> | PIDs: <64> | Read-Only RootFS: <Yes/No>`
- **Build & Run Command:**
  ```bash
  docker compose up --build -d
  ```

---

## 5. Step-by-Step Official Solution Write-Up
### Step 1: Reconnaissance / Enumeration
`<Explain how the player analyzes the provided files or service>`

### Step 2: Identifying the Flaw
`<Point to the exact vulnerable code block, assembly instruction, or mathematical weakness>`

### Step 3: Exploitation & Flag Retrieval
`<Walk through constructing the payload/solver to extract the flag>`

---

## 6. Automated Solver / Healthcheck Script (`solve.py`)
```python
#!/usr/bin/env python3
# Official automated solver & healthcheck script for <CHALL_ID>
import sys

def solve(host: str, port: int) -> str:
    # TODO: Implement reproducible exploit returning the flag
    flag = "cicada{...}"
    return flag

if __name__ == "__main__":
    extracted = solve("127.0.0.1", 1337)
    assert extracted.startswith("cicada{"), "Exploit failed!"
    print(f"[+] Healthcheck Passed! Flag: {extracted}")
```

---

## 7. Peer Playtesting & QA Checklist
- [ ] **No Guessing Required:** Solution path is logical and deterministic without arbitrary brute-force or stego-guessing.
- [ ] **Artifact Check:** `dist/` archive given to players does **not** accidentally contain the real flag, `.git` history, or unredacted environment files.
- [ ] **Unintended Solution Audit:** Verified that permissions, `Dockerfile` user privileges, and network egress prevent trivial bypasses.
- [ ] **Solver Verified:** Independent tester ran `solve.py` against staging container and confirmed flag retrieval.
- **Peer Tester Sign-Off & Notes:** `<Name, Date, Time Taken to Solve>`
