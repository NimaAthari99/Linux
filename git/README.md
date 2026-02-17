**Git for Absolute Beginners – Complete Step-by-Step Guide (2026)**

Hello! This guide is made for **complete beginners**.  
Every step is short, clear, and safe. Follow exactly and you will never get stuck.  
Now Let's Start!

### 1. What is Git?

Git is a free tool that remembers every version of your project.  
It lets you:
- Save your work safely
- Go back to any old version if you make a mistake
- Work together with friends without breaking each other’s code

Think of it like the “History” button in Google Docs, but much more powerful.

### 2. What is a Branch?

A **branch** is like a safe side road for your code.

- The main road is called `main` (this is the official version).
- When you want to add a new feature or fix a bug, you create a **new branch**.
- You work only on your branch. The `main` branch stays clean and safe.
- When your work is finished, you bring the changes back to `main`.

**Never work directly on the `main` branch!**




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


<img src="/assets/images/https-url-clone-cli.png" alt="GitHub Code Button" width="800">

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


<img src="/assets/images/Local-Remote-Repo.webp" alt="Local-Remote-Repo" width="800">



### 7. How to Bring Changes from Your Branch to Main

#### Best & Safest Way: Pull Request on GitHub

1. Push your branch.
2. Go to GitHub → you will see **“Compare & pull request”** button. Click it.




3. Make sure Base = `main`, Compare = your branch.  
4. Write title and description.  
5. Click **Create pull request**.  
6. After review, click **Merge pull request** → **Confirm merge**.

GitHub will ask: “Would you like to delete this branch?” → Click **Delete branch** (very easy!).

#### Simple Way (Terminal – only if you work alone)

```bash
git switch main
git pull
git merge feature/add-login-page
git push
```

### 8. How to Delete a Branch (Clean Up – Very Important!)

After your changes are safely in `main`, delete the old branch so your repository stays clean.

#### A. Delete on GitHub (Easiest – Recommended)

After merging the Pull Request, GitHub shows a green button **“Delete branch”**. Just click it. Done!

#### B. Delete Using Terminal

```bash
# 1. Go to main and update
git switch main
git pull

# 2. Delete your local branch (safe way)
git branch -d feature/add-login-page


<img src="/assets/images/open-a-pull-request_crop.png" alt="open-a-pull-request_crop" width="800">





# If Git says "not fully merged" and you are sure it's safe, use force:
git branch -D feature/add-login-page

# 3. Delete the branch from GitHub (remote)
git push origin --delete feature/add-login-page
```

**Tip:**  
- Use `-d` first (safe). It only deletes if changes are already in `main`.  
- Use `-D` only when you really want to throw it away.




### 9. Most Useful Commands

| Command                                      | What it does                                      |
|----------------------------------------------|---------------------------------------------------|
| `git status`                                 | Shows changes                                     |
| `git switch main`                            | Go to main                                        |
| `git switch -c feature/name`                 | Create new branch                                 |
| `git add .`                                  | Prepare changes                                   |
| `git commit -m "message"`                    | Save work                                         |
| `git push`                                   | Send to GitHub                                    |
| `git pull`                                   | Get latest code                                   |
| `git branch`                                 | List branches                                     |
| `git branch -d feature/name`                 | Delete local branch (safe)                        |
| `git push origin --delete feature/name`      | Delete remote branch                              |
| `git log --oneline --graph`                  | See history                                       |

### 10. Best Practices

- Always `git pull` on `main` before starting new work  
- Always create a new branch for every task  
- Keep branches small (1–3 days)  
- Write clear English commit messages  
- Use Pull Requests when working with others  
- Delete branches after merging (keeps everything clean!)  
- Never push broken code to `main`

### 11. Common Problems & Fixes

- “not a git repository” → Run `cd project-name` first  
- Permission denied → Use HTTPS link  
- Something broke? Run `git status` and ask for help  



### I'll beglad to have your opinions and ideas to becom expert in devops to ***help & prove*** each other.