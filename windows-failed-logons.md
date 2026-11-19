# Detection Idea: Repeated Failed Windows Logons

- **Objective:** identify repeated failed logon attempts that may warrant investigation.
- **Data source:** Windows Security log.
- **Event ID:** 4625.
- **Status:** design only; not yet validated.
- **Logic:** group events by target account and source/workstation over a defined time window; tune thresholds to the environment.
- **Potential false positives:** mistyped passwords, stale mapped-drive credentials, service accounts, scheduled tasks.
- **Triage:** identify account, logon type, source host/IP if present, time range, nearby successful logons, and whether the activity matches expected administration.
- **Validation:** generate only benign failed logons on your own lab VM, confirm the event appears locally, then validate ingestion and rule behavior.
- **Limitations:** a single event is not proof of compromise; source fields depend on logon type and audit configuration.
