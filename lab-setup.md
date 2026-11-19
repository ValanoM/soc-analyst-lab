# Lab Setup Guide

## Recommended small-footprint setup

- **Endpoint VM:** Windows 10/11, Sysmon, Wazuh agent
- **SIEM VM:** Ubuntu Server with Wazuh all-in-one deployment
- **Hypervisor:** VirtualBox
- **Networking:** NAT for updates plus host-only/internal networking for lab traffic, as needed

Exact CPU/RAM/disk requirements depend on the Wazuh release and available host resources. Check the current official Wazuh installation guide before deploying.

## Setup sequence

1. Snapshot the clean Windows VM.
2. Confirm Windows Security auditing and PowerShell logging.
3. Install Sysmon using a trusted, reviewed configuration.
4. Confirm the Sysmon Operational log receives events.
5. Install the Wazuh agent and point it at the manager's current lab IP.
6. Confirm the agent is active in the Wazuh dashboard.
7. Generate benign activity (for example, open PowerShell and run the supplied read-only checks).
8. Verify the event locally first, then check whether Wazuh receives and alerts on it.

## Troubleshooting order

- Confirm both VMs are running and the IP addresses have not changed.
- Check host-only adapter configuration and routes.
- Confirm the Wazuh agent service is running.
- Check manager/agent connectivity and firewall rules.
- Check the local Windows event log before troubleshooting rules.
- Record errors and timestamps in `docs/lab-journal.md`.

Do not expose the Wazuh dashboard or agent ports to the public internet. Keep credentials out of the repository.
