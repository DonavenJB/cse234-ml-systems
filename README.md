# CSE 234 — Data Systems for Machine Learning 

This repository tracks my work for UCSD **CSE 234: Data Systems for Machine Learning** (Instructor: Hao Zhang).
It’s organized for clean iteration, reproducibility, and fast experimentation on ML systems topics (autodiff, CUDA, compilation, parallelism, and LLM systems).

---

## Contents

- `assignments/` — PA1–PA3 folders with README stubs and local notebooks/code entry points
- `notes/` — lecture notes, reading summaries, scratch docs
- `env/` — `requirements.txt` and environment helpers
- `scripts/` — convenience scripts (setup, export figures, seeded pushes)
- `.vscode/` — workspace settings (interpreter, formatting)
- `.gitattributes`, `.gitignore` — line endings & ignore rules

---

## Environment (Windows, PowerShell)

I keep the venv **outside** the repo for stability:

```powershell
# Create a neutral env home (safe to re-run)
mkdir C:\pyenvs -ErrorAction SilentlyContinue

# Create the venv (adjust Python path to your install)
& "C:\Python313\python.exe" -m venv "C:\pyenvs\cse234" --upgrade-deps

# Activate
& C:\pyenvs\cse234\Scripts\Activate.ps1

# Install deps
python -m pip install -r .\env\requirements.txt

# Optional: Jupyter kernel
python -m ipykernel install --user --name cse234 --display-name "Python (cse234 venv)"
```

**VS Code** (already configured via `.vscode/settings.json`):

- Command Palette → **Python: Select Interpreter** → `C:\pyenvs\cse234\Scripts\python.exe`
- For notebooks, pick kernel **Python (cse234 venv)**

---

## Quick Commands

```powershell
# Lint & format
python -m pip install black ruff
ruff check .
black .

# Launch Jupyter Lab
jupyter lab
```

---

## Assignments

| PA | Topic | Starter | Local Entry |
|---:|:------|:--------|:------------|
| 1  | Autodiff & Transformers | https://github.com/hao-ai-lab/cse234-w25-PA/tree/main/pa1 | `assignments/pa1/` |
| 2  | Matmul Kernels & Tensor Parallel | https://github.com/hao-ai-lab/cse234-w25-PA/tree/main/pa2 | `assignments/pa2/` |
| 3  | MoE, Scaling Law, Speculative Decoding | https://github.com/hao-ai-lab/cse234-w25-PA/tree/main/pa3 | `assignments/pa3/` |

Each PA folder has a README stub and a local notebook/script to prototype. Pull official starter code into these folders as needed and adapt the scripts.

---

## Notes & Reading Summaries

- `notes/reading-summaries/week-xx.md` — brief, high-level synthesis of required readings
- `notes/lectures/` — personal lecture notes
- `notes/scribes/` — LaTeX or Markdown scribe drafts

---

## Repo Layout

```
assignments/
  pa1/
  pa2/
  pa3/
env/
  requirements.txt
notes/
  lectures/
  reading-summaries/
  scribes/
scripts/
  export-figures.ps1
  setup-venv.ps1
  push-seeded-commits.ps1
.vscode/
  settings.json
.gitattributes
.gitignore
README.md
```

---

## Housekeeping

- Always use `python -m pip ...` so installs target the active interpreter.
- Keep data and generated figures out of version control (see `.gitignore`).
- Notebooks are treated as **binary** in this repo to avoid noisy diffs.
