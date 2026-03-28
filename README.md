cat > README.md << 'EOF'
# Open Source Audit: Git Version Control System

**Course:** Open Source Software (NGMC)  
**Student:** Adi Midla  
**Roll Number:** 24BCG10117  
**Subject of Study:** Git - Distributed Version Control System  
**License:** GNU General Public License v2 (GPL v2)  
**Submission Date:** 31 March 2026

---

## What This Project Is About

Hi! This is my audit of **Git**, the version control system that basically every developer on Earth uses. But this isn't just a "what is Git" kind of project — it's a deep dive into *why* it exists, *who* built it, *what freedoms* its license gives you, and *how* it fits into the open-source ecosystem.

Along with a detailed written report, I've created five shell scripts that show I understand how open-source tools actually work on Linux and how to automate common system administration tasks.

**Why does this matter?** Because every line of code you'll ever write will probably run on top of open-source foundations. Understanding the philosophy behind that isn't optional — it's essential.

---

## What You Need to Get Started

### Your System Should Have:
- **Linux** (Ubuntu, CentOS, Fedora — any distribution works)
- **Bash shell** (version 4.0 or newer)
- **Standard Linux tools** (grep, awk, cut, du, ls — these are built-in)

### Install Git (if you don't have it):

**If you're on Ubuntu/Debian:**
```bash
sudo apt-get update
sudo apt-get install -y git
```

**If you're on CentOS/RHEL:**
```bash
sudo yum install -y git
```

**On Mac:**
```bash
brew install git
```

**Check it worked:**
```bash
git --version
bash --version
```

---

## How This Project is Organized
```
oss-audit-24BCG10117/
│
├── README.md                          # You're reading this now
├── project_report.pdf                 # The full 12-16 page analysis
│
├── script1_system_identity.sh          # Shows your Linux system info
├── script2_package_inspector.sh        # Checks if Git is installed
├── script3_disk_auditor.sh             # Audits disk usage & permissions
├── script4_log_analyzer.sh             # Searches logs for keywords
└── script5_manifesto_generator.sh      # Interactive philosophy statement
```

---

## The Five Scripts (What They Do & How to Run Them)

### Script 1: System Identity Report
**What it does:** Prints out your Linux system information and reminds you that Git is built on GPL v2.

**It shows:**
- What Linux distribution you're using
- Your kernel version
- Who you're logged in as
- How long your system has been running
- The date and time
- A message about open-source freedom

**Run it:**
```bash
chmod +x script1_system_identity.sh
./script1_system_identity.sh
```

**What you learn:** How to use variables, command substitution, and formatted output in Bash.

---

### Script 2: FOSS Package Inspector
**What it does:** Checks if Git is installed and tells you something interesting about it.

**It shows:**
- Whether Git is installed on your system
- What version you have
- The license (GPL v2)
- A quote from Linus Torvalds about why he built Git
- Philosophy notes about other open-source tools

**Run it:**
```bash
chmod +x script2_package_inspector.sh
./script2_package_inspector.sh
```

**What you learn:** How to use `if-then-else` statements and `case` statements to make decisions based on what's installed.

---

### Script 3: Disk and Permission Auditor
**What it does:** Walks through important system directories and tells you how much space they use and who owns them.

**It shows:**
- Directory sizes (human-readable, like 1.5G instead of bytes)
- Permission bits (rwx format)
- Owner and group
- Special attention to Git configuration directories

**Run it:**
```bash
chmod +x script3_disk_auditor.sh
./script3_disk_auditor.sh
```

**What you learn:** How to loop through arrays, extract data using `awk` and `cut`, and understand Linux permissions.

---

### Script 4: Log File Analyzer
**What it does:** Reads a log file and counts how many times a specific word appears.

**Usage:**
```bash
./script4_log_analyzer.sh [logfile] [keyword]
```

**Try it:**
```bash
./script4_log_analyzer.sh /var/log/syslog error
./script4_log_analyzer.sh /var/log/auth.log failed
./script4_log_analyzer.sh /var/log/kern.log warning
```

**What you learn:** How to read files line-by-line, count things, and give users helpful summaries.

---

### Script 5: Open Source Manifesto Generator
**What it does:** Asks you three questions and writes a personalized statement about your philosophy on open source.

**Run it:**
```bash
chmod +x script5_manifesto_generator.sh
./script5_manifesto_generator.sh
```

**It will ask:**
1. What open-source tool do you use every day?
2. What does "freedom" mean to you?
3. What would you build and share freely?

Then it creates a text file with your personalized manifesto.

**What you learn:** How to take user input, create files, work with timestamps, and build strings dynamically.

---

## Quick Start

### Clone this repo:
```bash
git clone https://github.com/adimidla20/oss-audit-24BCG10117.git
cd oss-audit-24BCG10117
```

### Make all scripts executable:
```bash
chmod +x script*.sh
```

### Run all scripts at once:
```bash
./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_auditor.sh
./script4_log_analyzer.sh /var/log/syslog error
./script5_manifesto_generator.sh
```

---

## Troubleshooting

**Scripts won't run?**
```bash
chmod +x script*.sh
```

**"Permission denied" error?**
Make sure the scripts are executable (see above).

**Script 4 can't find a log file?**
Check what log files exist:
```bash
ls -la /var/log/
```

Then use one that exists:
```bash
./script4_log_analyzer.sh /var/log/syslog error
```

**Git not installed?**
```bash
sudo apt-get install git    # Ubuntu/Debian
sudo yum install git        # CentOS/RHEL
brew install git            # Mac
```

---

## What the Report Covers

The **project_report.pdf** (12-16 pages) breaks down Git into four main sections:

**Part A: Where Git Came From & Why (4 pages)**
- The true story of why Linus Torvalds built Git
- What problem it solved
- How GPL v2 works and what it actually allows
- Ethical questions about open source

**Part B: Git on Linux (2 pages)**
- Where Git lives on your computer (`/usr/bin/git`)
- What configuration files it uses
- Who can run it and what permissions matter
- How you get security updates

**Part C: The Ecosystem Around Git (2 pages)**
- What libraries Git depends on
- What projects Git inspired (GitHub, GitLab, etc.)
- Who maintains Git and how decisions get made
- How Git fits into modern web development

**Part D: Git vs The Alternatives (2-3 pages)**
- How Git compares to Perforce, SVN, Mercurial
- When you'd choose Git over something proprietary
- Honest pros and cons
- My verdict on whether I'd use it in production

---

## About This Project

**Why I chose Git:**
Git is everywhere. It's the foundation that modern software development is built on. But most people just use it without understanding *why* it's the way it is or *what values* it represents. This project forced me to actually research that.

**What I learned:**
- How one person's frustration (Linus couldn't use BitKeeper) led to a tool used by millions
- That "free" doesn't mean "free of cost" — it means freedom to use, study, modify, and share
- That open source isn't altruism — it's a practical way to build better software faster
- That understanding the *philosophy* behind tools matters as much as knowing how to use them

---

## The License

This project itself is licensed under **GPL v2** — the same license as Git. That means you can:
- Use it however you want
- Read and understand the code
- Modify it for your needs
- Share your improvements with others

---

## Resources I Used

- **GNU Philosophy** — https://gnu.org/philosophy/free-sw.html
- **Open Source Definition** — https://opensource.org/osd
- **Git Documentation** — https://git-scm.com/doc
- **Linus Torvalds** — "Just for Fun" (his autobiography)
- **Eric S. Raymond** — "The Cathedral and the Bazaar"

---

## Questions?

If any of these scripts don't work on your system, check the Troubleshooting section above.

If you want to understand Git better, read the project report.

If you want to contribute improvements, this repo is open for that too.

**Remember: Keep your source open.** 🚀

---

**Adi Midla**  
24BCG10117  
VIT Bhopal
EOF
