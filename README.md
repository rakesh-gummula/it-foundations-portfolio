# 🖥️ IT Foundations Portfolio

<div align="center">

![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![PowerShell](https://img.shields.io/badge/PowerShell-5391FE?style=for-the-badge&logo=powershell&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![VirtualBox](https://img.shields.io/badge/VirtualBox-183A61?style=for-the-badge&logo=virtualbox&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)

**A hands-on collection of foundational IT projects covering system administration, networking, security, automation, and virtualization.**

*Built to demonstrate real-world IT skills — not just theory.*

</div>

---

## 📋 Table of Contents

- [About This Portfolio](#-about-this-portfolio)
- [Projects](#-projects)
  - [1. Home Virtual Lab Setup](#1-home-virtual-lab-setup)
  - [2. Home Network Mapping](#2-home-network-mapping)
  - [3. Active Directory Deployment](#3-active-directory-deployment)
  - [4. Backup Automation](#4-backup-automation)
  - [5. Baseline System Hardening](#5-baseline-system-hardening)
- [Skills Demonstrated](#-skills-demonstrated)
- [Technologies & Tools](#-technologies--tools)
- [Repository Structure](#-repository-structure)
- [Author](#-author)
- [License](#-license)

---

## 📖 About This Portfolio

This repository contains five hands-on IT projects completed as part of building a strong foundation in core IT concepts and real-world systems administration. Each project targets a distinct domain — from spinning up a virtual lab to hardening a system against threats — and includes step-by-step documentation, screenshots, and working scripts.

> **Who this is for:** Beginners and early-career IT professionals looking to learn by doing, or hiring managers wanting to see practical skills in action.

---

## 🗂️ Projects

### 1. Home Virtual Lab Setup

> **Folder:** [`home-virtual-lab-setup/`](./home-virtual-lab-setup)

A complete walkthrough for building an isolated virtual lab environment using VMware Workstation Pro or Oracle VirtualBox. The lab runs Kali Linux as the guest OS and serves as the safe testing ground used across all other projects in this portfolio.

**What's covered:**
- Enabling hardware virtualization in BIOS/UEFI
- Creating and configuring a new virtual machine
- Installing Kali Linux step by step (with 50+ screenshots)
- Post-install updates and environment verification

**Key skills:** Hypervisor setup · OS installation · VM resource allocation · Snapshot management

---

### 2. Home Network Mapping

> **Folder:** [`home-network-mapping/`](./home-network-mapping)

A practical exercise in discovering, documenting, and analyzing a home network using industry-standard tools. Goes beyond just listing devices — includes packet-level analysis with Wireshark.

**What's covered:**
- Host discovery and OS fingerprinting with **Zenmap (Nmap GUI)**
- Subnet scanning (`192.168.x.0/24`) and topology visualization
- Traffic capture and protocol analysis with **Wireshark**
- DNS and ARP filtering to understand address resolution
- Exporting scan results (`.xml`) and packet captures (`.pcap`) as artifacts

**Key skills:** Network topology mapping · IP/MAC discovery · Packet analysis · Network documentation

---

### 3. Active Directory Deployment

> **Folder:** [`active-directory-deployment/`](./active-directory-deployment)

Builds a fully functional Active Directory domain from scratch in a virtual lab — the same architecture used in most enterprise Windows environments. Includes a PowerShell script to bulk-create realistic user accounts automatically.

**What's covered:**
- Configuring a **Windows Server 2022** Domain Controller (DC-01)
- Setting static IPs and assigning DNS/DHCP roles
- Promoting the server to a Domain Controller (`cyberlab.local`)
- Joining a **Windows 10/11** client machine to the domain
- **Bulk user creation** via PowerShell script from a CSV file
- Deploying a **Group Policy Object (GPO)** to restrict Control Panel access

**Key skills:** Active Directory · DNS · DHCP · Group Policy · PowerShell scripting · Domain management

📄 **Scripts:** [`BulkUserCreation.ps1`](./active-directory-deployment/scripts/BulkUserCreation.ps1)

---

### 4. Backup Automation

> **Folder:** [`backup-automation/`](./backup-automation)

Implements automated backup solutions on both Windows and Linux, turning a manual chore into a scheduled, logged, and reliable background task.

**Windows — PowerShell:**
- Compresses a target directory into a timestamped `.zip` file
- Writes a detailed success/failure log on every run
- Scheduled via **Windows Task Scheduler** to run nightly

**Linux — Bash:**
- Monitors network host availability and open ports
- Logs results with timestamps for ongoing network health tracking
- Automated via **cron jobs** to run hourly

**Key skills:** PowerShell scripting · Bash scripting · Task Scheduler · Cron · Log management · Data protection

📄 **Scripts:** [`BackupScript.ps1`](./backup-automation/scripts/BackupScript.ps1)

---

### 5. Baseline System Hardening

> **Folder:** [`baseline-system-hardening/`](./baseline-system-hardening)

A practical, 10-step hardening guide for securing a Windows or Linux endpoint from a known baseline. Each step includes clear objectives, specific actions, and a deliverable artifact — making it repeatable and auditable.

**Steps covered:**
1. Prepare the system and define the baseline
2. Fully patch the operating system
3. Remove unnecessary software and disable unused features
4. Apply account hardening (least privilege)
5. Strengthen password and authentication controls
6. Secure local security settings (firewall, antivirus, BitLocker/UFW)
7. Harden network exposure (open ports, remote access review)
8. Improve browser and user protection
9. Set up backup and recovery protection
10. Validate all hardening changes

**Key skills:** System hardening · Least privilege · Firewall configuration · Account management · Security documentation

---

## 🧠 Skills Demonstrated

| Domain | Skills |
|---|---|
| **System Administration** | Windows Server, Active Directory, DNS, DHCP, Group Policy |
| **Virtualization** | VMware Workstation, VirtualBox, VM snapshots, resource allocation |
| **Networking** | Subnet scanning, topology mapping, packet capture, ARP/DNS analysis |
| **Security** | System hardening, account security, firewall config, least privilege |
| **Automation & Scripting** | PowerShell, Bash, Task Scheduler, cron jobs, log management |
| **Documentation** | Markdown, checklists, change logs, screenshot-based walkthroughs |

---

## 🛠️ Technologies & Tools

**Operating Systems:** Windows Server 2022 · Windows 10/11 · Kali Linux · Ubuntu

**Hypervisors:** VMware Workstation Pro · Oracle VirtualBox

**Scripting:** PowerShell · Bash

**Networking Tools:** Nmap / Zenmap · Wireshark · Angry IP Scanner · Fing

**Windows Tools:** Active Directory Users & Computers · Group Policy Management · Task Scheduler · PowerShell ISE · Windows Defender · BitLocker

**Linux Tools:** UFW · systemd · audit · apt/dnf · cron

---

## 📁 Repository Structure

```
it-foundations-portfolio/
│
├── active-directory-deployment/
│   ├── README.md               # Full deployment guide (8 steps)
│   ├── scripts/
│   │   └── BulkUserCreation.ps1
│   └── screenshots/
│
├── backup-automation/
│   ├── README.md               # Windows + Linux automation guide
│   └── scripts/
│       └── BackupScript.ps1
│
├── baseline-system-hardening/
│   ├── README.md               # 10-step hardening guide
│   └── docs/
│
├── home-network-mapping/
│   ├── README.md               # Zenmap + Wireshark walkthrough
│   └── assets/
│
├── home-virtual-lab-setup/
│   ├── README.md               # Full VM setup guide with 50+ screenshots
│   └── screenshots/
│
└── README.md                   # ← You are here
```

---

## 👤 Author

**Rakesh Gummula**

[![GitHub](https://img.shields.io/badge/GitHub-rakesh--gummula-181717?style=flat-square&logo=github)](https://github.com/rakesh-gummula)

---

## 📄 License

This repository is licensed under the [MIT License](https://opensource.org/licenses/MIT) and is shared freely for educational and portfolio purposes.
