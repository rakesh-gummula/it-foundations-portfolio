# Active Directory Deployment & Configuration

<div align="center">

![Windows Server](https://img.shields.io/badge/Windows%20Server-Active%20Directory-0078D4?style=for-the-badge&logo=windows&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-Scripting-5391FE?style=for-the-badge&logo=powershell&logoColor=white)
![Windows Client](https://img.shields.io/badge/Windows%20Client-Domain%20Joined-00A4EF?style=for-the-badge&logo=windows11&logoColor=white)
![Lab](https://img.shields.io/badge/Home%20Lab-IT%20Project-2E8B57?style=for-the-badge)

</div>

## Introduction

The goal of this project is to set up a secure, isolated virtual network consisting of a Windows Server acting as a Domain Controller (DC) and a Windows Client machine.

## Core Components

**Hypervisor:** VirtualBox or VMware Workstation Player (Both are free).

**Domain Controller (DC):** Windows Server 2022 (Evaluation ISO).

**Client Machine:** Windows 10 or 11 Pro (Evaluation ISO).

**Network:** Isolated internal virtual network with the DC providing Routing/NAT, DNS, and DHCP services.

### Step 1: Gather Your Resources

Before starting, download the official, free trial ISOs from Microsoft:

**1. Windows Server 2022 Evaluation ISO:** Download from the Microsoft Evaluation Center.

**2. Windows 10/11 Enterprise/Pro Evaluation ISO:** Download from the Microsoft Evaluation Center.

### Step 2: Configure the Virtual Network & VMs

To ensure your lab doesn't interfere with your actual home network, you must isolate it.

1. Create the Domain Controller VM
- **OS:** Windows Server 2022.
- **Resources:** Allocate at least 2 vCPUs and 4 GB RAM.
- **Network Adapters:** * Adapter 1: Set to NAT (This allows the server to connect to the internet to download updates).
  - Adapter 2: Set to Internal Network (Name it something like AD-Internal). This adapter will handle private communication with your client machines.

2. Create the Client VM
- **OS:** Windows 10 or 11 Pro.
- **Resources:** Allocate 2 vCPUs and 4 GB RAM.
- **Network Adapter:** Set to Internal Network (AD-Internal). It must be on the exact same internal network name as the DC's second adapter.

### Step 3: Domain Controller Base Configuration

Install Windows Server 2022 on your DC VM (choose the Desktop Experience version so you have a graphical user interface).

1. Rename the Server
- Open Server Manager -> Local Server.
- Click on the computer name and change it to something identifiable, like DC-01.
- Restart the server.

2. Configure Static IP Settings
   
You must assign a static IP to the internal network interface so clients always know where to find the domain controller.
- Open Network Connections (ncpa.cpl).
- Identify the adapter connected to the Internal Network.
- Right-click -> Properties -> IPv4 Properties.
- Configure it with these sample settings:
  - **IP Address:** 192.168.10.1
  - **Subnet Mask:** 255.255.255.0
  - **Default Gateway:** Leave blank (The NAT adapter handles internet routing for now).
  - **Preferred DNS Server:** 127.0.0.1 (The server will look to itself for DNS once the role is installed).

### Step 4: Install AD DS & Promote to Domain Controller

1. Install the Role
- In Server Manager, click Add roles and features.
- Select Role-based or feature-based installation.
- Select DC-01 from the server pool.
- Check the box for Active Directory Domain Services (accept the automatic inclusion of required features).
- Proceed through the wizard and click Install.

2. Promote the Server
- Once installed, click the yellow flag notification icon in Server Manager and select Promote this server to a domain controller.
- Choose Add a new forest.
- Enter a Root Domain Name (e.g., cyberlab.local).
- Set a Directory Services Restore Mode (DSRM) password (write this down).
- Keep defaults for the rest of the wizard and click Install. The server will reboot automatically.

### Step 5: Automate User Creation

Instead of creating users one by one manually, you will use a PowerShell script to create an Organizational Unit (OU) structure and bulk-import hundreds of mock users.

1. Create a Mock User List
Create a CSV file named names.csv with columns for FirstName and LastName. Populate it with 20–50 random names, or use an online generator.

2. Run the PowerShell Script
Log in to your Domain Controller as the Administrator, open PowerShell ISE as Administrator, and run a script similar to this:
![BulkUserCreation.ps1](scripts/BulkUserCreation.ps1)

### Step 6: Deploy DHCP

To allow client computers to automatically receive an IP address and find your Domain Controller, configure the DHCP role on DC-01.
- Add the DHCP Server role via Server Manager.
- Once installed, open the DHCP console.
- Right-click IPv4 -> New Scope.
- Define the IP range (e.g., 192.168.10.100 to 192.168.10.200).
- Configure Scope Options:
  - **Router (Default Gateway):** 192.168.10.1
  - **DNS Server:** 192.168.10.1 (Your DC's IP).
 
### Step 7: Join the Client Machine to the Domain

Now, switch to your Windows 10/11 VM.

1. Verify Networking
- Ensure the network adapter is set to Internal Network (AD-Internal).
- Open a command prompt and type ipconfig /all.
  Ensure the client has received an IP from your DHCP pool and its DNS server is pointing strictly to 192.168.10.1.
- Test connectivity by pinging your domain: ping cyberlab.local.

2. Join the Domain
- Open settings -> System -> About -> Advanced system settings.
- Under the Computer Name tab, click Change.
- Toggle Member of from Workgroup to Domain, and type your domain name (cyberlab.local).
- When prompted for credentials, log in with your Domain Controller administrator username and password (CYBERLAB\Administrator).
- Restart the client machine. You can now log in using one of the automated user accounts created by your PowerShell script!

### Step 8: Deploy a Basic Group Policy Object (GPO)

To show that you understand centralized management, implement a simple GPO policy.
- On the DC, open Group Policy Management.
- Right-click your domain or a specific OU -> Create a GPO in this domain, and Link it here....
- Name it Desktop-Restrictions.
- Right-click the new GPO -> Edit.
- Navigate to User Configuration -> Policies -> Administrative Templates -> Control Panel.
- Enable the policy: Prohibit access to Control Panel and PC settings.
- On the Client VM, open command prompt and type gpupdate /force.
- Try opening the control panel to verify that the policy blocks access.

## Best Practices
Configure Windows Defender Firewalls, Event Viewer auditing, and Setup Least Privilege access accounts

## License
MIT LICENSE
