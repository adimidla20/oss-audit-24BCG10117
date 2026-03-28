# Open Source Audit: Git Version Control System

**Course:** Open Source Software (NGMC)  
**Student Name:** Adi Midla  
**Registration Number:** 24BCG10117  
**Chosen Software:** Git - Distributed Version Control System  
**License:** GNU General Public License v2 (GPL v2)  
**Date of Submission:** 31 March 2026

---

## Project Overview

This project is a structured audit of **Git**, the world's most popular distributed version control system. The audit includes:

1. **Project Report (12-16 pages)** — Analysis of Git's origin, philosophy, licensing, ecosystem, and comparison with proprietary alternatives
2. **Five Shell Scripts** — Practical demonstrations of Linux command-line skills related to system auditing and open-source philosophy

The project aims to develop critical thinking about open-source software, Linux systems administration, and the values that drive collaborative development.

---

## Prerequisites

### System Requirements
- **Linux OS** (Ubuntu 20+, CentOS 7+, or any distribution)
- **Bash shell** (version 4.0+)
- **Standard Unix utilities:** grep, awk, cut, du, ls, wc, date, whoami, hostname, uname

### Software Installation

#### Ubuntu/Debian
```bash
sudo apt-get update
sudo apt-get install -y git curl wget
```

#### CentOS/RHEL
```bash
sudo yum install -y git curl wget
```

#### macOS
```bash
brew install git
```

### Verify Installation
```bash
git --version
bash --version
```

---

## Project Structure
```
oss-audit-24BCG10117/
│
├── README.md                          # This file
├── project_report.pdf                 # Your 12-16 page report
│
├── script1_system_identity.sh          # System info + philosophy
├── script2_package_inspector.sh        # Git package details
├── script3_disk_auditor.sh             # Directory permissions & size
├── script4_log_analyzer.sh             # Log file keyword search
└── script5_manifesto_generator.sh      # Interactive philosophy generator
```

---

## Shell Scripts Overview

### Script 1: System Identity Report
**File:** `script1_system_identity.sh`

**Purpose:** Displays comprehensive Linux system information and introduces the open-source philosophy behind Git.

**Output includes:**
- Linux distribution name and kernel version
- Current user and home directory
- System uptime and current date/time
- Git license information (GPL v2)

**Shell Concepts Used:**
- Variables (`$VAR`)
- Command substitution (`$(command)`)
- String formatting with `echo`

**How to Run:**
```bash
chmod +x script1_system_identity.sh
./script1_system_identity.sh
```

---

### Script 2: FOSS Package Inspector
**File:** `script2_package_inspector.sh`

**Purpose:** Checks if Git is installed on the system, retrieves version and license information, and displays philosophy notes about open-source tools.

**Output includes:**
- Installation status (installed or not)
- Package version and license
- Philosophy notes specific to Git
- Information about other FOSS tools (case statement)

**Shell Concepts Used:**
- `if-then-else` conditional logic
- `case` statement for pattern matching
- `dpkg -l` for package info
- Pipe with `grep` for filtering

**How to Run:**
```bash
chmod +x script2_package_inspector.sh
./script2_package_inspector.sh
```

---

### Script 3: Disk and Permission Auditor
**File:** `script3_disk_auditor.sh`

**Purpose:** Audits important system directories to report disk usage, owner, group, and permission bits. Includes special section for Git configuration.

**Output includes:**
- Directory permissions (rwx format)
- Owner and group information
- Disk usage (human-readable)
- Security analysis of permissions
- Git-specific config locations

**Shell Concepts Used:**
- Arrays (`DIRS[@]`)
- `for` loops with array iteration
- `ls -ld` for directory info
- `awk` and `cut` for field extraction
- `du -sh` for disk usage

**How to Run:**
```bash
chmod +x script3_disk_auditor.sh
./script3_disk_auditor.sh
```

---

### Script 4: Log File Analyzer
**File:** `script4_log_analyzer.sh`

**Purpose:** Analyzes log files by reading them line-by-line, counting occurrences of a keyword, and displaying matching entries.

**Usage:**
```bash
./script4_log_analyzer.sh [logfile] [keyword]
```

**Examples:**
```bash
# Analyze syslog for errors
./script4_log_analyzer.sh /var/log/syslog error

# Analyze auth.log for failed logins
./script4_log_analyzer.sh /var/log/auth.log failed

# Analyze kernel messages
./script4_log_analyzer.sh /var/log/kern.log warning
```

**Shell Concepts Used:**
- Command-line arguments (`$1`, `$2`)
- Default values (`${VAR:-default}`)
- `while IFS= read -r` loop (line-by-line processing)
- `if-then` conditional inside loop
- `grep -iq` for case-insensitive searching
- Arrays for storing results
- Arithmetic expansion (`$((...))`

---

### Script 5: Open Source Manifesto Generator
**File:** `script5_manifesto_generator.sh`

**Purpose:** Interactive script that asks three questions about your open-source philosophy and generates a personalized manifesto statement, saved to a file.

**Process:**
1. Prompts user for three inputs (using `read`)
2. Generates timestamp and metadata
3. Composes a multi-paragraph manifesto
4. Saves to a timestamped file
5. Displays the result

**Shell Concepts Used:**
- `read` command for user input
- String concatenation with variables
- Command substitution (`$(date)`, `$(whoami)`)
- File creation with `>` (create) and `>>` (append)
- Directory creation with `mkdir -p`
- Conditional logic `[ ! -d DIR ]`

**How to Run:**
```bash
chmod +x script5_manifesto_generator.sh
./script5_manifesto_generator.sh
```

---

## Quick Start Guide

### Step 1: Clone Repository
```bash
git clone https://github.com/adimidla20/oss-audit-24BCG10117.git
cd oss-audit-24BCG10117
```

### Step 2: Make Scripts Executable
```bash
chmod +x script*.sh
```

### Step 3: Run Each Script

**Script 1 — System Identity**
```bash
./script1_system_identity.sh
```

**Script 2 — Package Inspector**
```bash
./script2_package_inspector.sh
```

**Script 3 — Disk Auditor**
```bash
./script3_disk_auditor.sh
```

**Script 4 — Log Analyzer**
```bash
./script4_log_analyzer.sh /var/log/syslog error
```

**Script 5 — Manifesto Generator**
```bash
./script5_manifesto_generator.sh
```

---

## Troubleshooting

### Scripts Won't Run
**Problem:** `Permission denied`  
**Solution:**
```bash
chmod +x script*.sh
```

### Script 4 (Log Analyzer) Fails
**Problem:** `Log file not found`  
**Solution:** Use a log file that exists on your system
```bash
ls -la /var/log/
./script4_log_analyzer.sh /var/log/syslog error
```

### Package Inspector Shows "Not Installed"
**Problem:** Git not installed  
**Solution:**
```bash
sudo apt-get install git    # Ubuntu/Debian
# or
sudo yum install git        # CentOS/RHEL
```

---

## Project Report Structure

The accompanying **project_report.pdf** includes:

- **Part A (4 pages):** Origin story, license analysis, ethical reflection on open source
- **Part B (2 pages):** Linux footprint — where Git installs, how it runs, user permissions
- **Part C (2 pages):** FOSS ecosystem — dependencies, forks, community
- **Part D (2-4 pages):** Git vs proprietary alternatives (SVN, Perforce, Mercurial) — comparison and verdict

---

## Author & Submission

**Student Name:** Adi Midla  
**Roll Number:** 24BCG10117  
**Course:** Open Source Software (NGMC)  
**Institution:** Vellore Institute of Technology (VIT), Bhopal  
**Date of Submission:** 31 March 2026

---

## License

This project is licensed under the **GNU General Public License v2 (GPL v2)** — the same license as Git itself.

You are free to:
- Use, modify, and distribute this project
- Study how the code works
- Share improvements with others

---

## References

- **GNU Project** — The Free Software Definition: https://gnu.org/philosophy/free-sw.html
- **Open Source Initiative** — The Open Source Definition: https://opensource.org/osd
- **Git Official Documentation** — https://git-scm.com/doc
- **Linus Torvalds** — "Just for Fun" (autobiography)
- **Eric S. Raymond** — "The Cathedral and the Bazaar"

---

Happy learning! Remember: always keep your source open! 🚀
