# The Intruder Detector (Active Watchdog) 🕵️‍♂️🛡️

A lightweight, event-driven Bash automation script designed to audit active user sessions, filter trusted system accounts, and log unauthorized access anomalies with forensic timestamps.

## 🚀 Features
* **Kernel Auditing:** Leverages native Linux commands to poll active system sessions.
* **Inverted Filtering:** Uses `grep` pattern matching to isolate unexplained logins.
* **Persistent SIEM Ledger:** Implements append-only redirection to build a continuous security trail.
* **Forensic Timestamps:** Automatically stamps anomalies with precise down-to-the-second execution metadata.

## 🛠️ Tech Stack & Concepts
* **Scripting Language:** Bash (Shell Scripting)
* **Linux Utilities:** `who`, `grep`, `wc`, `chmod`, `date`
* **I/O Operations:** Standard Output Redirection (`>`), Append Redirection (`>>`), Command Substitution (`$(...)`)
* **Version Control:** Git, GitHub (`.gitignore` architecture)

## 📦 How It Works
1. The script captures a live snapshot of logged-in sessions using `who`.
2. It processes lines through `grep -v`, stripping out pre-approved administrative usernames.
3. If an anomaly is found, a conditional logic block dynamically generates a custom forensic timestamp and appends the unapproved session metadata into `alerts.log`.