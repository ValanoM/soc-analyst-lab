# Completed Cases

# SOC Analyst Home Lab

## Overview

This repository documents my hands-on Security Operations Center (SOC) home lab, built to practice security monitoring, Windows endpoint telemetry, detection engineering, and incident response.

The project focuses on collecting and investigating security events, developing investigation procedures, and documenting findings in a format suitable for a SOC analyst workflow.

## Lab Objectives

- Practice security monitoring using Wazuh SIEM.
- Collect and review Windows endpoint events using Sysmon.
- Use PowerShell to collect basic host information and test event sources.
- Develop detection and triage procedures for suspicious activity.
- Document investigations, findings, and remediation recommendations.
- Build repeatable incident-response workflows.

## Tools and Technologies

| Tool | Purpose |
|---|---|
| Wazuh | Security event monitoring and alert investigation |
| Windows 10 | Endpoint telemetry and investigation practice |
| Sysmon | Detailed Windows system activity logging |
| PowerShell | Host information collection and event-source testing |
| GitHub | Version control and security portfolio documentation |

## Repository Structure

- `Collect-BasicHostInfo.ps1` — PowerShell script for collecting basic host information.
- `Test-EventSources.ps1` — Script for checking selected event sources.
- `lab-setup.md` — Lab setup documentation.
- `lab-inventory.md` — Lab asset inventory.
- `lab-journal.md` — Notes on lab progress and observations.
- `triage-windows-endpoint.md` — Windows endpoint triage procedure.
- `windows-failed-logons.md` — Investigation guide for failed Windows logons.
- `incident-report.md` — Incident report template.
- `LICENSE` — Repository license.

## Investigation Workflow

1. Identify a security alert or suspicious event.
2. Establish the affected host and relevant time window.
3. Collect available logs and supporting evidence.
4. Examine event details and build a timeline.
5. Determine what the evidence supports and identify information still needed.
6. Recommend containment, remediation, or further investigation as appropriate.
7. Document the findings and lessons learned.

## Evidence and Reporting

Investigation records should include:

- Case summary and timestamps
- Affected host and event source
- Relevant event IDs and log excerpts
- Investigation steps and findings
- Indicators or artifacts observed
- Assessment, limitations, and recommended next steps

Screenshots and sample logs should be sanitized to remove credentials, tokens, and other sensitive information.

## Responsible Use

This lab is intended for authorized defensive security learning and testing in an isolated environment. Any simulated suspicious activity should be performed only on systems I own or am authorized to test.

## Project Status

This is an ongoing learning project. Lab configurations, detection logic, investigation notes, and evidence will be updated as exercises are completed and validated.

## Author

Valano M.

This repository demonstrates my practical development in security monitoring, endpoint investigation, PowerShell, and incident response.
