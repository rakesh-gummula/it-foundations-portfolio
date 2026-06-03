# 🛠️ Backup Automation

<div align="center">

![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![PowerShell](https://img.shields.io/badge/PowerShell-5391FE?style=for-the-badge&logo=powershell&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Maintained](https://img.shields.io/badge/Maintained%3F-yes-green.svg?style=for-the-badge)

</div>

## Choose Your Arsenal

You need to decide which environment you want to write your script in.

| Operating System   | Scripting Language | Automation Tool | Best for Targetting                                  |
|--------------------|--------------------|-----------------|------------------------------------------------------|
| Windows            | Powershell         | Task Scheduler  | Corporate IT environments, Helpdesk, Desktop Support |
| Linux              | Bash               | Cron Jobs       | Cloud, Server Admin, DevOps, Network Ops             |

## Windows

### Step 1: Write the Automation Script

We are going to write a script that takes a specific folder, compresses it into a ZIP file with a date timestamp, moves it to a backup location, and writes a log file detailing whether it succeeded or failed.

1.Open Windows PowerShell ISE or VS Code on your computer.
2. Create a new file, copy the code below, and save it as ![BackupScript.ps1](scripts/BackupScript.ps1).

(Note: Change the $sourceDir and $backupDir variables to folder paths that actually exist on your PC to test it).

### Step 2: Automate the Execution

A script isn't truly "automation" until it runs by itself.
You will use Windows Task Scheduler to run this script automatically in the background.

- Open Task Scheduler from the Windows start menu.
- Click Create Basic Task... on the right-hand panel.
- Name it "Daily Data Backup".
- Set the trigger to Daily and pick a time (e.g., 2:00 AM).
- For the action, choose Start a program.
- In the "Program/script" box, simply type: powershell.exe
- In the "Add arguments" box, type the following (replacing the path with wherever you saved your script):
  -ExecutionPolicy Bypass -WindowStyle Hidden -File
  "C:\Path\To\Your\BackupScript.ps1"
- Save it, right-click your new task in the library, and hit Run to test it!

## Linux

### Bash Automation Script

This Bash script will ping a target machine (like your home router or a virtual machine) to check if it is online, scan it for open essential ports (like SSH, HTTP, and HTTPS), and log the results with a timestamp.
It demonstrates knowledge of Linux command-line tools, networking protocols, and security monitoring.

### Step 1: Write the Bash Script

You can write this on any Linux distribution (Ubuntu, Kali, Mint) or via Windows Subsystem for Linux (WSL).

1. Open your terminal.
2. Create a new file using a text editor like nano:
   nano network_monitor.sh
3. Copy and paste the following code: ![network_monitor.sh](scripts/network_monitor.sh).
4. Save the file (Ctrl+O, Enter, then Ctrl+X in nano).
5. Make the script executable by running:
   chmod +x network_monitor.sh
6. Test it by running ./network_monitor.sh and then view the log with cat /tmp/network_monitor.log.

### Step 2: Automate with Cron Jobs

In Linux, the equivalent of Windows Task Scheduler is the cron daemon(tar+rsync).
Let's set this script to run automatically every hour.

1. Open your crontab configuration by typing:
   crontab -e
2. Scroll to the bottom of the file and add this line (make sure to replace /path/to/ with the actual folder where your script lives):
   0 * * * * /path/to/network_monitor.sh
3. Save and exit.
   The script will now execute on the hour, every hour, silently building a log of your network's health.

## Recommended
Automate at least five daily routines to save time and back up your data.

## 📄 License
This project is licensed under the MIT License.
