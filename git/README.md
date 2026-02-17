# Git for Absolute Beginners – Complete Step-by-Step Guide (2026)

Hello! This guide is made for **complete beginners**.  
Every step is short, clear, and safe. Follow exactly and you will never get stuck.  
Let's Start!

### 1. What is Git?

Git is a free tool that remembers every version of your project.  
It lets you:
- Save your work safely
- Go back to any old version if you make a mistake
- Work together with friends without breaking each other’s code

Think of it like the “***History***” button in Google Docs, but much more powerful.

### 2. What is a Branch?

A **branch** is like a safe side road for your code.

- The main road is called `main` (this is the official version).
- When you want to add a new feature or fix a bug, you create a **new branch**.
- You work only on your branch. The `main` branch stays clean and safe.
- When your work is finished, you bring the changes back to `main`.

**Never work directly on the `main` branch!**

<img src="/assets/images/Project-Workflow.webp" alt="Project-Workflow" width="700" >


**Simple picture:**
```
main:     A --- B --- C   ← official version

your-branch:      \--- D --- E --- F   ← your new feature
```

### 3. Install Git

1. Go to: https://git-scm.com/downloads  
2. Download the version for your computer.  
3. Install with all default settings (click “Next”).

### 4. Set Up Your Name and Email (Do this once)

Open Terminal / Git Bash and run:

```bash
git config --global user.name "Your Full Name"
git config --global user.email "your-email@gmail.com"
```

### 5. Clone (Download) the Project

1. Go to the GitHub page.  
2. Click green **Code** button → copy **HTTPS** link.


<img src="/assets/images/https-url-clone-cli.png" alt="https-url-clone-cli" width="700" >


3. In Terminal:

```bash
cd ~/Desktop
git clone https://github.com/username/project-name.git
cd project-name
```

### 6. Your Safe Daily Workflow

```bash
# 1. Get latest code
git switch main
git pull

# 2. Create your safe branch
git switch -c feature/add-login-page

# 3. Do your work (edit files)

# 4. Save changes
git status
git add .
git commit -m "Add login page with nice button"

# 5. Send to GitHub
git push -u origin feature/add-login-page   # first time
git push                                    # next times
```

<img src="/assets/images/Local-Remote-Repo.webp" alt="Local-Remote-Repo" width="700" >


### 7. What is "origin"?

**origin** is a **short name (nickname)** that Git automatically gives to your remote repository on GitHub.

When you do `git clone`, Git creates this name "origin" and saves the full GitHub URL inside it.

**Why do we use it?**  
Instead of typing the long URL every time, you just write `origin`.

**Simple rule:**  
`origin` = "my GitHub project"

**Real examples:**
- `git push -u origin feature/login` → send my work to GitHub
- `git push origin --delete feature/old` → delete branch from GitHub
- `git pull origin main` → get latest code from GitHub

You can have other remotes (like "upstream"), but **origin** is the default and the one you will use 95% of the time.

### 8. How to Bring Changes from Your Branch to Main

#### Best & Safest Way: Pull Request on GitHub

1. Push your branch.
2. Go to GitHub → click **“Compare & pull request”**.




3. Make sure Base = `main`.  
4. Write title and description.  
5. Click **Create pull request** → after review click **Merge pull request**.

GitHub will ask if you want to delete the branch → click **Delete branch**.

#### Simple Way (Terminal – only if alone)

```bash
git switch main
git pull
git merge feature/add-login-page
git push
```

### 9. How to Delete a Branch (Clean Up)

#### On GitHub (Easiest)
After merging Pull Request, click the green **“Delete branch”** button.

#### Using Terminal

```bash
git switch main
git pull

# Safe delete
git branch -d feature/add-login-page

# Delete from GitHub
git push origin --delete feature/add-login-page
```

### 10. Most Useful Commands

| Command                                      | What it does                                      |
|----------------------------------------------|---------------------------------------------------|
| `git status`                                 | Shows changes                                     |
| `git switch main`                            | Go to main                                        |
| `git switch -c feature/name`                 | Create new branch                                 |
| `git add .`                                  | Prepare changes                                   |
| `git commit -m "message"`                    | Save work                                         |
| `git push`                                   | Send to GitHub                                    |
| `git pull`                                   | Get latest code                                   |
| `git branch -d name`                         | Delete local branch (safe)                        |
| `git push origin --delete name`              | Delete remote branch                              |

### 11. Best Practices

- Always `git pull` on `main` before new work  
- Always create a new branch  
- Keep branches small  
- Use Pull Requests with others  
- Delete branches after merging  
- Never push broken code to `main`

