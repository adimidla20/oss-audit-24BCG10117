# Open Source Audit: Git Version Control System

**Course:** Open Source Software (NGMC)  
**Student:** Adi Midla  
**Roll Number:** 24BCG10117  
**What I'm Studying:** Git - Distributed Version Control System  
**License:** GNU General Public License v2 (GPL v2)  
**Submission Date:** 31 March 2026

---

## Hey, What's This Project About?

So... Git. That tool basically every developer uses but nobody really understands the *why* behind it.

This isn't just another "what is Git" writeup. I dug into the actual story — why Linus Torvalds built it, what problem he was solving, what freedoms the GPL v2 license actually gives you, and how it became the foundation of modern software development.

I also wrote five shell scripts that prove I actually know how Linux works, not just how to Google solutions.

**Why does it matter?** Because everything you'll ever code will probably depend on open-source software. And if you're going to build on top of something, you should understand *why* it exists and *what values* it represents.

---

## Getting Started (What You Need)

### Your Setup Should Have:
- **Linux** (Ubuntu, CentOS, Fedora — honestly, any distribution works)
- **Bash shell** (version 4.0 or newer)
- **Standard Linux tools** (grep, awk, cut, du, ls — they come built-in)

### Don't Have Git Yet? No Problem:

**Ubuntu/Debian users:**
```bash
sudo apt-get update
sudo apt-get install -y git
```

**CentOS/RHEL users:**
```bash
sudo yum install -y git
```

**Mac users:**
```bash
brew install git
```

**Verify it worked:**
```bash
git --version
bash --version
```

---

## Project Layout

Here's what you're looking at:

```
oss-audit-24BCG10117/
│
├── README.md                          # This file (you're reading it!)
├── project_report.pdf                 # My complete analysis (12-16 pages)
│
├── script1_system_identity.sh          # Shows your Linux system info
├── script2_package_inspector.sh        # Checks if Git is installed + fun facts
├── script3_disk_auditor.sh             # Audits disk usage & permissions
├── script4_log_analyzer.sh             # Searches logs for specific keywords
└── script5_manifesto_generator.sh      # Lets you write your own philosophy statement
```

---

## The Five Scripts (What They Actually Do)

### Script 1: System Identity Report

**In simple terms:** This script shows off your Linux system like a resume.

**What it displays:**
- Your Linux distribution (Ubuntu, CentOS, etc.)
- Kernel version
- Who's logged in
- How long your system has been running
- Current date and time
- A message about open-source freedom

**How to run it:**
```bash
chmod +x script1_system_identity.sh
./script1_system_identity.sh
```

**What you'll learn:** Variables, command substitution (`$(...)`), and how to format terminal output nicely.

---

### Script 2: FOSS Package Inspector

**In simple terms:** Checks if Git is installed, and if it is, tells you cool facts about it.

**What it shows:**
- Is Git installed? (Yes or No)
- What version you have
- The license type (GPL v2)
- A quote from Linus about why he created Git
- Quick philosophy notes about other open-source tools

**How to run it:**
```bash
chmod +x script2_package_inspector.sh
./script2_package_inspector.sh
```

**What you'll learn:** `if-then-else` statements and `case` statements for making decisions based on conditions.

---

### Script 3: Disk and Permission Auditor

**In simple terms:** Walks through your system directories and tells you how much space they're using and who owns them.

**What it shows:**
- How much space each directory uses (in readable format like 1.5G)
- Permission bits (rwxrwxrwx format)
- Who owns each directory
- Special focus on Git configuration locations

**How to run it:**
```bash
chmod +x script3_disk_auditor.sh
./script3_disk_auditor.sh
```

**What you'll learn:** For loops, arrays, extracting data with `awk` and `cut`, and understanding Linux permissions.

---

### Script 4: Log File Analyzer

**In simple terms:** Reads through a log file and counts how many times a specific word appears.

**How to use it:**
```bash
./script4_log_analyzer.sh [logfile] [keyword]
```

**Try these examples:**
```bash
./script4_log_analyzer.sh /var/log/syslog error
./script4_log_analyzer.sh /var/log/auth.log failed
./script4_log_analyzer.sh /var/log/kern.log warning
```

**What you'll learn:** Reading files line-by-line with while loops, counting things, and giving users useful summaries.

---

### Script 5: Open Source Manifesto Generator

**In simple terms:** Asks you personal questions about open source, then writes a custom philosophy statement for you.

**How to run it:**
```bash
chmod +x script5_manifesto_generator.sh
./script5_manifesto_generator.sh
```

**It will ask you:**
1. What's one open-source tool you use every day?
2. What does "freedom" mean to you in one word?
3. What's something you'd build and share freely?

Then it creates a personalized manifesto and saves it to a file.

**What you'll learn:** Taking user input with `read`, creating files, working with timestamps, building strings dynamically.

---

## Quick Start (TL;DR)

### Clone the repo:
```bash
git clone https://github.com/adimidla20/oss-audit-24BCG10117.git
cd oss-audit-24BCG10117
```

### Make scripts executable:
```bash
chmod +x script*.sh
```

### Run everything:
```bash
./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_auditor.sh
./script4_log_analyzer.sh /var/log/syslog error
./script5_manifesto_generator.sh
```

---

## Troubleshooting (Things Go Wrong Sometimes)

**Scripts won't run?**
```bash
chmod +x script*.sh
```
(Make sure they're executable — that should fix it.)

**Getting "Permission denied"?**
See above. Really, just run the `chmod` command.

**Script 4 can't find a log file?**
Check what's available:
```bash
ls -la /var/log/
```

Then use a file that exists:
```bash
./script4_log_analyzer.sh /var/log/syslog error
```

**Don't have Git installed?**
```bash
sudo apt-get install git    # Ubuntu/Debian
sudo yum install git        # CentOS/RHEL
brew install git            # Mac
```

---

## The Project Report (What's Inside)

The **project_report.pdf** is my deep dive into Git. Here's what each section covers:

**Part A: Where Git Came From & Why (4 pages)**
- The real story: why Linus Torvalds built Git
- What problem it solved (spoiler: proprietary software being evil)
- How GPL v2 works and what it actually means
- Ethical questions about open source (is it fair? Is it better?)

**Part B: Git on Linux (2 pages)**
- Where Git lives on your computer (`/usr/bin/git`)
- What config files it uses
- Who can run it and why permissions matter
- How you get security updates

**Part C: The Ecosystem Around Git (2 pages)**
- What other open-source libraries Git depends on
- What projects Git inspired (GitHub, GitLab, etc.)
- Who maintains Git and how they make decisions
- How Git fits into real web development workflows

**Part D: Git vs The Alternatives (2-3 pages)**
- How Git compares to Perforce, SVN, Mercurial
- When you'd actually want to use something else
- Honest pros and cons
- Would I use it in production? (spoiler: yes)

---

## Why I Chose Git (Personal Context)

Git is everywhere. Every developer uses it. But most people just... use it without thinking about why it exists or what it means.

I wanted to understand the *philosophy* behind the tool, not just the commands.

**Here's what I discovered:**
- One developer's frustration (Linus couldn't use BitKeeper because it went proprietary) led to a tool that billions of people now depend on
- "Free" doesn't mean "costs nothing" — it means freedom to use, study, modify, and share your changes
- Open source isn't about being nice — it's about building software faster through collaboration
- Understanding *why* a tool exists matters just as much as knowing how to use it

---

## License

This project is licensed under **GPL v2** (same as Git). That means:
- Use it however you want
- Read the code and understand how it works
- Modify it for your needs
- Share your improvements with others

---

## Resources (Where I Learned This Stuff)

- **GNU Philosophy** — https://gnu.org/philosophy/free-sw.html
- **Open Source Definition** — https://opensource.org/osd
- **Git Official Docs** — https://git-scm.com/doc
- **Linus Torvalds** — "Just for Fun" (his autobiography)
- **Eric S. Raymond** — "The Cathedral and the Bazaar"

---

## Got Questions?

If the scripts don't work, check the Troubleshooting section.

If you want more context, read the project report.

If you want to improve this, contributions are welcome — that's the whole point of open source.

**TL;DR:** Keep your source open. 🚀

---

**Adi Midla**  
Roll: 24BCG10117  
VIT Bhopal

*"Every line of code stands on the shoulders of giants. Understand the giants."*
