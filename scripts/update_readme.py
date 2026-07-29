from pathlib import Path

# Repository root
ROOT = Path(__file__).resolve().parent.parent

# Questions folder
QUESTIONS_FOLDER = ROOT / "Questions"

# README file
README_FILE = ROOT / "README.md"

# Get all SQL files like Q001.sql, Q002.sql...
question_files = sorted(QUESTIONS_FOLDER.glob("Q*.sql"))

# Total solved questions
total_questions = len(question_files)

# Create question list
question_list = []

for file in question_files:
    question_list.append(f"- ✅ {file.stem}")

# Latest question
latest = question_files[-1].stem if question_files else "None"

# Progress Bar
total_goal = 100
filled = int((total_questions / total_goal) * 20)
progress_bar = "🟢" * filled + "🔴" * (20 - filled)

# README Content
readme = f"""# 📘 SSMS SQL Employee Sample Database Questions & Answers

A collection of Microsoft SQL Server interview questions solved using an Employee Sample Database.

---

## 📊 Progress

{progress_bar}

**Solved : {total_questions} / {total_goal} Questions**

---

## 🚀 Latest Question

{latest}

---

## 📂 Solved Questions

{chr(10).join(question_list)}

---

## 🗄 Database

- Employees
- Departments
- Projects
- EmployeeProjects
"""

# Write README
README_FILE.write_text(readme, encoding="utf-8")

print("README Updated Successfully!")