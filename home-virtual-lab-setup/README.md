# Home Lab Setup

A home lab is a safe and isolated environment for learning, testing, and experimenting with operating systems, virtualization, networking, and system administration.
It helps you practice technical skills without affecting your main computer or production systems.

## 📋 Table of Contents
- [Features](#-features)
- [Prerequisites](#-prerequisites)
- [Installation](#-installation)
- [Usage](#-usage)
- [Best Practices](#-best-practices)
- [Contributing](#-contributing)
- [License](#-license)

## ✨ Features
- Run multiple operating systems on a single machine
- Create isolated virtual machines for testing and learning
- Practice virtualization, networking, and administration tasks
- Safe environment for experimenting with system configurations

## 🛠 Prerequisites
Before setting up your home lab, make sure you have:

- A computer with enough CPU, RAM, and storage for virtualization
- Virtualization enabled in BIOS/UEFI
- A hypervisor such as:
  - VMware Workstation Pro (Prefarred)
  - Oracle VirtualBox
  - Hyper-V
- Operating system(Kali) ISO files for the systems you want to install

## 🚀 Installation
![VMware Interface](screenshots/Screenshot-01.png)
![New Virtual Machine Wizard](screenshots/Screenshot-02.png)
![Choose the Virtual Machine Hardware Compatibility](screenshots/Screenshot-03.png)
![Guest Operating System Installation](screenshots/Screenshot-04.png)
![Select a Guest Operating System](screenshots/Screenshot-05.png)
![Name the Virtual Machine](screenshots/Screenshot-06.png)
![Processor Configuration](screenshots/Screenshot-07.png)
![Memory for the Virtual Machine](screenshots/Screenshot-08.png)
![Network Type](screenshots/Screenshot-09.png)
![Select I/O Controller Types](screenshots/Screenshot-10.png)
![Select a Disk Type](screenshots/Screenshot-11.png)
![Select a Disk](screenshots/Screenshot-12.png)
![Specify Disk Capacity](screenshots/Screenshot-13.png)
![Specify Disk File](screenshots/Screenshot-14.png)
![Ready to Create a Virtual Machine: Cross Check Everything](screenshots/Screenshot-15.png)
![Kali Linux Installer Menu](screenshots/Screenshot-16.png)
![Select a language](screenshots/Screenshot-17.png)
![Select your location](screenshots/Screenshot-18.png)
![Configure the keyboard](screenshots/Screenshot-19.png)
![In Progress-1](screenshots/Screenshot-20.png)
![In Progress-2](screenshots/Screenshot-21.png)
![In Progress-3](screenshots/Screenshot-22.png)
![Configure the Network: Hostname](screenshots/Screenshot-23.png)
![Configure the Network: Domain name](screenshots/Screenshot-24.png)
![Setup users and passwords](screenshots/Screenshot-25.png)
![Usename for your account](screenshots/Screenshot-27.png)
![Password for your account](screenshots/Screenshot-28.png)
![In Progress](screenshots/Screenshot-29.png)
![Partition disks: Partitioning method](screenshots/Screenshot-30.png)
![Partition disks: Select a disk to partition](screenshots/Screenshot-31.png)
![Partition disks: Selected for partitioning](screenshots/Screenshot-32.png)
![Partition disks: Finish Partitioning](screenshots/Screenshot-33.png)
![Partition diks: Changes to the disks](screenshots/Screenshot-34.png)
![In Progress-1](screenshots/Screenshot-35.png)
![In Progress-2](screenshots/Screenshot-36.png)
![Software Selection](screenshots/Screenshot-37.png)
![In Progress](screenshots/Screenshot-38.png)
![Configuring gdm3: Display Manager](screenshots/Screenshot-39.png)
![In Progress-1](screenshots/Screenshot-40.png)
![In Progress-2](screenshots/Screenshot-41.png)
![In Progress-3](screenshots/Screenshot-42.png)
![Install the GRUB boot loader](screenshots/Screenshot-43.png)
![Install the GRUB boot loader: Choose the device](screenshots/Screenshot-44.png)
![In Progress](screenshots/Screenshot-45.png)
![Finsih the install and reboot](screenshots/Screenshot-46.png)
![New Guest Operating System Lockscreen Interface-1](screenshots/Screenshot-47.png)
![New Guest Operating System Lockscreen Interface-2](screenshots/Screenshot-48.png)
![Update your New Guest Operating System by running the Commands](screenshots/Screenshot-49.png)
![Terminal](screenshots/Screenshot-50.png)
![Updating System](screenshots/Screenshot-51.png)
![Update in Progress](screenshots/Screenshot-52.png)


1. Download and install your preferred hypervisor.
2. Enable virtualization support in your BIOS/UEFI if it is not already enabled.
3. Download the ISO file for the operating system you want to test.
4. Create a new virtual machine in your hypervisor.
5. Assign CPU, memory, and storage resources based on your system capacity.
6. Attach the ISO file and start the virtual machine.
7. Complete the operating system installation inside the virtual machine.

## 💻 Usage
After installation, you can use the home lab to:
- Test new operating systems
- Practice network configuration
- Learn Linux or Windows administration
- Experiment with snapshots, backups, and recovery
- Build and test scripts or automation tools

## ✅ Best Practices
- Keep the lab isolated from production systems
- Take snapshots before making major changes
- Allocate resources carefully to avoid slowing down your host machine
- Use strong passwords for all virtual machines
- Document your lab setup for future reference

## 🤝 Contributing
Contributions are welcome. Feel free to open an issue or submit a pull request to improve this project.

## 📄 License
This project is licensed under the MIT License.
