Ansible Role - JumpCloud
==========================
This repo contains the JumpCloud (jumpcloud) Ansible role.

DEPRECATION NOTICE
------------------
Route 1337 LLC has ceased use of JumpCloud a long time ago and will now stop maintaining this repo.  
We welcome anyone that wishes to take it on and we can unarchive the repo if you reach out to us.

What this role does
-------------------
This role installs and connects the JumpCloud Agent on Ubuntu and CentOS systems.

1. Download and install JumpCloud Agent
2. Configure the agent with your JumpCloud organization's "Connect Key"
3. Make sure the JumpCloud Agent is enabled and started.

Variables
---------
The following variables are required:

1. `jumpcloud.connect_key` - The JumpCloud organization's "Connect Key" for downloading and binding the agent to the org.

Credentials Note
----------------
The JumpCloud Connect Key cannot be changed so protect it very carefully when including it in test data or inventories.

Testing
-------
This role is fully tested via Test Kitchen using **live** inventory data contained in this repo.  
[TESTING.md](TESTING.md) contains details and instructions for testing. 

Donate To Support This Ansible Role
-----------------------------------
Route 1337 LLC's open source code heavily relies on donations. If you find this Ansible role useful, please consider using the GitHub Sponsors button to show your continued support.

Thank you for your support!

