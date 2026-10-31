# Equipment and Network

## 1. Overview
This section documents the on-ground hardware, power distribution, uninterruptible power supply (UPS/generator) backup, campus Wi-Fi/LAN provisioning, firewall rules, and audio-visual equipment arranged for **Cicada CTF 2026**.

## 2. Responsible Team and Members
- **Primary Owner:** Logistics Team & Development Team
- **Contributors:** BIT Mesra Network & Electrical Maintenance Staff
> ⚠️ TBD: Assign Network & Power Infrastructure Coordinator | Owner: Logistics Team | Due: 2026-11-10

## 3. Timeline
| Milestone | Target Date | Status |
| :--- | :--- | :--- |
| Bandwidth & Port Whitelisting Request to Campus IT | `TBD (Mid Nov 2026)` | Pending |
| Extension Boards, Switches & AV Inventory Audit | `TBD (Late Nov 2026)` | Pending |
| On-Site Network Load & Power Backup Test (T-1 Day) | `TBD (Early Dec 2026)` | Planned |
| Post-Event Equipment Return & Reconciliation | `TBD (Early Dec 2026)` | Planned |

## 4. Detailed Description
### 4.1 Network & Internet Provisioning
- **Primary Uplink:** BIT Mesra Campus Leased Line / NKN (`Bandwidth: TBD Mbps/Gbps`)
- **Access Medium:** `TBD (Dedicated SSID Wi-Fi / Wired Ethernet LAN per table)`
- **Outbound Port Requirements:** Ensure campus firewall allows outbound TCP traffic to dynamic challenge ports (`e.g., TCP 10000–40000`) and SSH/VPN ports if required by challenges.
- **Failover Backup:** `TBD (5G/4G Enterprise Hotspots for Admin War Room and Scoreboard Management)`

### 4.2 Power & Hardware Inventory Checklist
| Item / Equipment | Quantity Required | Quantity Arranged | Source / Vendor | Assigned Zone | Status |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Multi-Plug Extension Boards | `TBD` | `TBD` | `TBD` | Competition Arena & War Room | Pending |
| Network Switches & CAT6 Cables | `TBD` | `TBD` | `TBD` | Competition Arena | Pending |
| Wi-Fi Access Points / Routers | `TBD` | `TBD` | `TBD` | Competition Arena | Pending |
| Projectors / LED Display Screens | `TBD` | `TBD` | `TBD` | Stage & Live Scoreboard | Pending |
| PA System, Microphones & Mixer | `TBD` | `TBD` | `TBD` | Inauguration / Closing Hall | Pending |
| Generator / UPS Backup Verification | `TBD` | `TBD` | Campus Electrical | All Venues | Pending |

## 5. Decisions Made and Why
> ⚠️ TBD: Document decisions regarding Wi-Fi vs. wired LAN deployment andcampus firewall whitelisting for non-standard TCP challenge ports | Owner: Logistics Team & Development Team | Due: 2026-11-20

## 6. Challenges Faced and How They Were Solved
> ⚠️ TBD: Record any network congestion, firewall blocks on `nc` ports, or power trips encountered and how they were resolved | Owner: Logistics Team | Due: Post-Event

## 7. Outcomes and Metrics
- **Venue Network Uptime (%):** `TBD`
- **Average Local Latency to CTF Platform (ms):** `TBD`
- **Power Interruptions / Failover Events:** `TBD`

## 8. Photo/Media Section
![Network Switches, Power Distribution, and AV Setup at the Venue](../09-media/photos/preparation/logistics/20261204_preparation_logistics_network-and-power-setup_01.jpg)
*Figure 6.2: On-Venue Network Setup, Power Distribution, and Scoreboard Projection Screen | Date: TBD | Photo credit: TBD*

## 9. Lessons Learned
> ⚠️ TBD: Capture critical learnings on testing campus firewall policies for non-HTTP (`netcat`) CTF connections ahead of time | Owner: Logistics Team & Development Team | Due: Post-Event

## 10. Open Items / TBD
> ⚠️ TBD: Confirm outbound TCP port range with Development Team and submit whitelist request to BIT Mesra IT | Owner: Development Team & Logistics Team | Due: 2026-11-20
