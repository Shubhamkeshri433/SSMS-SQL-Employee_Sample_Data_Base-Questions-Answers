\
from pathlib import Path
import re

ROOT=Path(__file__).resolve().parent.parent
README=ROOT/"README.md"
QDIR=ROOT/"Questions"
GOAL=100

files=sorted(QDIR.glob("Q*.sql"), key=lambda p:int(re.search(r"\d+",p.stem).group()) if re.search(r"\d+",p.stem) else 0)
rows=[]
for f in files:
    line=f.read_text(encoding="utf-8").splitlines()[0] if f.read_text(encoding="utf-8").splitlines() else ""
    m = re.match(r"--\s*Q(\d+)\.\s*(.+)", line, re.IGNORECASE)
    if m:
        qno = f"Q{int(m.group(1)):03d}"   # Q1 -> Q001
        question = m.group(2).strip()
        rows.append(f"| {qno} | {question} | ✅ |")
    else:
        rows.append(f"| {f.stem} | No title | ✅ |")
count=len(files)
pct=round(count/GOAL*100)
filled=int(20*pct/100)
bar="🟩"*filled+"⬜"*(20-filled)
latest=files[-1].stem if files else "-"
table="| No | Business Question | Status |\n|---|---|---|\n"+"\n".join(rows)

txt=README.read_text(encoding="utf-8")
prog=f"{bar}\n\n**Solved:** {count}/{GOAL}  \n**Completion:** {pct}%  \n**Latest:** {latest}"
txt=re.sub(r"<!--PROGRESS_START-->.*?<!--PROGRESS_END-->",
           "<!--PROGRESS_START-->\n"+prog+"\n<!--PROGRESS_END-->",
           txt,flags=re.S)
txt=re.sub(r"<!--QUESTIONS_START-->.*?<!--QUESTIONS_END-->",
           "<!--QUESTIONS_START-->\n"+table+"\n<!--QUESTIONS_END-->",
           txt,flags=re.S)
README.write_text(txt,encoding="utf-8")
print("README updated")
