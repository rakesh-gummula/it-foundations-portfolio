# 📊Baseline System Hardening

![Project Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Security](https://img.shields.io/badge/Focus-System%20Hardening-blue)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux-informational)
![Documentation](https://img.shields.io/badge/Documentation-Complete-success)
![Cybersecurity](https://img.shields.io/badge/Cybersecurity-Portfolio-purple)
![License](https://img.shields.io/badge/License-MIT-yellow)

## Introduction

This project documents a practical, repeatable Baseline System Hardening process for Windows or Linux endpoints.
It is designed as a portfolio-friendly GitHub project that demonstrates foundational cybersecurity, IT support, and systems administration skills.
The workflow is written for learners with a IT background and focuses on safe, realistic hardening steps that improve security without overcomplicating the system.

## Prerequisits

Before starting, you should have:
 - A Windows or Linux machine in a lab or test environment
 - Administrator access for system configuration tasks
 - Basic familiarity with operating system settings
 - Backup or snapshot capability
 - A text editor for documentation
 - Optional: PowerShell or Bash access for automation

## Objectives

- Establish a secure and repeatable baseline
- Reduce unnecessary services, software, and exposure
- Apply least privilege and account security best practices
- Enable logging, recovery, and verification steps
- Document the process in a way that others can reproduce

## Technologies and Tools Used

This project may use the following tools depending on the platform:

**Windows**
- Windows Security
- Microsoft Defender Antivirus
- Windows Firewall
- PowerShell
- BitLocker
- Local Group Policy Editor

**Linux**
- Bash
- sudo
- ufw or firewalld
- systemd
- audit logs
- package manager tools such as apt, dnf, or yum

**Documentation**
- Markdown
- Screenshots
- Checklists
- Change logs

## Step-by-Step Guide

### Step 1: Prepare the System and Define the Baseline

**Objective:** Start from a known state so changes can be measured.

**Actions:**
- Identify the device type, OS version, and intended use.
- Record the current baseline:
  - OS build/version
  - Installed apps
  - Local users and groups
  - Current security settings
  - Disk layout and available storage
- Create a restore point or snapshot if the platform supports it.
- Take screenshots or notes before making changes.

**Deliverable:** A short baseline inventory file, such as `baseline-notes.md`.

### Step 2: Fully Patch the Operating System

**Objective:** Close known vulnerabilities before making other changes.

**Actions:**
- Run all available OS updates.
- Update device drivers only when needed and from trusted sources.
- Update common user applications such as browsers, PDF readers, and office tools.
- Reboot as required and confirm updates installed successfully.

**Best practice:** A hardened system that is not patched is still exposed.

**Deliverable:** Screenshot or notes showing update status and version number

### Step 3: Remove Unnecessary Software and Disable Unused Features

**Objective:** Reduce the attack surface.

**Actions:**
- Uninstall software that is not required for the system’s purpose.
- Disable unused startup items.
- Remove or disable legacy components that are not needed.
- Turn off features or services that are not used in the lab environment.
- Review browser extensions and remove anything unnecessary.

**Examples of common cleanup targets:**
- Trialware and vendor utilities that are not essential
- Old remote-access tools
- Unused media players, games, or demo software
- Unneeded cloud sync clients on a test workstation

**Deliverable:** A removal log listing what was removed and why.

### Step 4: Apply Account Hardening

**Objective:** Enforce least privilege and reduce account abuse.

**Actions:**
- Use a standard user account for day-to-day work.
- Keep administrator access separate from routine use.
- Rename or disable any default accounts that should not be used.
- Remove stale accounts.
- Make sure every account has a unique purpose.
- Review group membership carefully and only grant access that is required.

**Good practice:** Use admin rights only when needed, not as the default.

**Deliverable:** Account and group membership checklist.

### Step 5: Strengthen Password and Authentication Controls

**Objective:** Make unauthorized access harder.

**Actions:**
- Enforce strong password requirements.
- Use longer passphrases instead of short complex passwords when possible.
- Configure account lockout thresholds to limit brute-force attempts.
- Enable multi-factor authentication where the platform supports it.
- Never share accounts between people.

**For a lab project:** Document the policy settings you chose and explain why.

**Deliverable:** A password policy summary.

### Step 6:  Secure Local Security Settings

**Objective:** Enable built-in protections provided by the OS.

**Actions:**
- Turn on the host firewall.
- Enable malware or antivirus protection.
- Make sure real-time protection is active.
- Enable automatic sample submission only if permitted by your environment.
- Configure screen lock and automatic timeout settings.
- Disable guest access and other unnecessary convenience features.

**Windows examples:**
- Microsoft Defender Antivirus
- Windows Firewall
- SmartScreen
- BitLocker, if available

**Linux examples:**
- Host-based firewall such as UFW or firewalld
- File permission review
- Service hardening where applicable

**Deliverable:** Security settings checklist with screenshots.

### Step 7: Harden Network Exposure

**Objective:** Limit unnecessary network access.

**Actions:**
- Review open ports and listening services.
- Disable remote services that are not required.
- Turn off file sharing if the device does not need it.
- Use private or trusted network profiles when appropriate.
- Set up DNS, VPN, or remote access tools only if needed and approved.
- Confirm that network discovery and sharing are disabled on systems that do not require them.

**Deliverable:** A simple network exposure review showing what was enabled or disabled.

### Step 8: Improve Browser and User Protection

**Objective:** Reduce phishing and malicious download risk.

**Actions:**
- Use a trusted browser with automatic updates enabled.
- Disable unnecessary browser add-ons.
- Turn on phishing and malicious site protection.
- Set download warnings and review permission prompts.
- Teach safe browsing habits in your project notes.

**Deliverable:** Browser hardening checklist.

### Step 9: Set Up Backup and Recovery Protection

**Objective:** Make sure the system can be restored if something breaks.

**Actions:**
- Create a full backup or system image.
- Test file recovery or restore procedures.
- Document where backups are stored.
- Protect backup media from unauthorized access.
- Include versioning or multiple restore points if possible.

**Deliverable:** Backup verification notes.

### Step 10: Validate the Hardening Changes

**Objective:** Confirm the system still works as expected.

**Actions:**
- Test login with standard and admin accounts.
- Verify patch levels.
- Confirm firewall and antivirus status.
- Check that required apps still run.
- Confirm disabled services stay off after reboot.
- Review logs for errors or warnings caused by the changes.

**Deliverable:** A validation checklist with pass/fail results.

## Best Practices

- Use a lab environment whenever possible.
- Make one change at a time and verify the result.
- Keep clear notes on every setting you change.
- Test backups before relying on them.
- Balance security with usability.

## Conclusion

Baseline hardening is one of the most valuable skills in IT and cybersecurity.
It combines practical system administration, risk reduction, and clear documentation.
