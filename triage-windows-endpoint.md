# Playbook: Windows Endpoint Alert Triage

1. **Validate the alert**
   - Record alert ID, rule, severity, timestamp, endpoint, and data source.
   - Confirm the underlying event exists and is parsed correctly.
2. **Build a timeline**
   - Review nearby process, logon, PowerShell, network, and service events.
   - Normalize timestamps and record the time zone.
3. **Scope**
   - Identify user, host, parent/child processes, command line, hashes, and related alerts when available.
   - Compare with approved administrative activity.
4. **Assess**
   - Separate observed facts from hypotheses.
   - Consider benign explanations and missing telemetry.
5. **Containment decision**
   - In a lab, document a hypothetical action or isolate only your own test VM.
   - In production, follow the organization's authorization and escalation process.
6. **Close out**
   - State conclusion and confidence.
   - Record evidence, gaps, recommendations, and detection improvements.
