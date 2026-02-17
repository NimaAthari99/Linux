**Git for Absolute Beginners – Complete Step-by-Step Guide (2026)**

Hello! This guide is made for **complete beginners**.  
Every step is short, clear, and safe. You can follow it exactly and never get stuck.  
Let's Start!

### 1. What is Git?

Git is a free tool that remembers every version of your project.  
It lets you:
- Save your work safely
- Go back to any old version if you make a mistake
- Work together with friends without breaking each other’s code

Think of it like the “History” button in Google Docs, but much more powerful.

### 2. What is a Branch?

A **branch** is like a safe side road for your code.

- The main road is called `main` (this is the official version of your project).
- When you want to add a new feature or fix a bug, you create a **new branch**.
- You work only on your branch. The `main` branch stays clean and safe.
- When your work is finished and tested, you bring the changes back to `main`.

**Never work directly on the `main` branch!**




**Simple picture in your mind:**
```
main:     A --- B --- C   ← official version

your-branch:      \--- D --- E --- F   ← your new feature
```

When you are ready, you connect your side road to the main road.

### 3. Install Git

1. Open your browser and go to: https://git-scm.com/downloads
2. Download the version for your computer (Windows, Mac, or Linux).
3. Install it with all default settings — just click “Next” every time.

### 4. Set Up Your Name and Email (Do this only once)

Open **Terminal** (Mac/Linux) or **Git Bash** (Windows) and run these two lines:

```bash
git config --global user.name "Your Full Name"
git config --global user.email "your-email@gmail.com"
```

Change them to your real name and email.

### 5. Clone (Download) the Project to Your Computer

1. Go to the GitHub page of the project.
2. Click the big green **Code** button.
3. Copy the **HTTPS** link.




4. Open Terminal and go to a folder where you want to save the project; Exmple:

```bash
cd ~/Desktop
```

5. Download the project:

```bash
git clone https://github.com/username/project-name.git
```

6. Enter the folder:

```bash
cd project-name
```

### 6. Your Safe Daily Workflow (Do this every time)

```bash
# Step 1: Always start by getting the latest code
git switch main
git pull

# Step 2: Create your own safe branch
git switch -c feature/add-login-page
# Good examples: feature/add-button, bugfix/fix-error

# Step 3: Do your work (edit files in VS Code or any editor)

# Step 4: Save your changes
git status          # see what you changed
git add .           # add all changes
git commit -m "Add login page with nice button"

# Step 5: Send to GitHub
git push -u origin feature/add-login-page   # only the first time
git push                                    # after that, just this
```




### 7. How to Bring Changes from Your Branch to Main

This is the most important part! There are two easy ways.

#### Best Way: Pull Request on GitHub (Recommended for everyone)

This is the safest way, especially when working with others.

1. Push your branch (use the steps above).
2. Go to your project page on GitHub.com.
3. GitHub will show a big button **“Compare & pull request”** — click it.




4. Check:
   - Base branch = `main`
   - Compare branch = your branch (e.g. `feature/add-login-page`)
5. Write a clear title and description (example: “Add login page – ready for review”).
6. Click **Create pull request**.
7. Your friends can review it and leave comments.
8. When everyone is happy, click **Merge pull request** → **Confirm merge**.

**After merge:**
- Your changes are now safely in `main`.
- Delete the old branch on GitHub (there is a button).

On your computer, update everything:

```bash
git switch main
git pull
git branch -d feature/add-login-page          # delete local branch
```

#### Simple Way: Merge Using Terminal (Only if you work alone)

```bash
# 1. Go to main and get latest changes
git switch main
git pull

# 2. Bring your branch changes into main
git merge feature/add-login-page

# 3. Send the updated main to GitHub
git push

# 4. Delete your old branch (optional but clean)
git branch -d feature/add-login-page
```

**What happens?**  
Git takes all the new commits from your branch and adds them to `main`. Your changes are now part of the main project.




### 8. Most Useful Commands (Keep This Table)

| Command                              | What it does                              |
|--------------------------------------|-------------------------------------------|
| `git status`                         | Shows what you changed                    |
| `git switch main`                    | Go to main branch                         |
| `git switch -c name`                 | Create and go to new branch               |
| `git add .`                          | Prepare all your changes                  |
| `git commit -m "message"`            | Save your work                            |
| `git push`                           | Send to GitHub                            |
| `git pull`                           | Get latest code                           |
| `git branch`                         | See all your branches                     |
| `git log --oneline --graph`          | See nice history of changes               |

### 9. Best Practices (Very Important Rules)

- Always run `git pull` on `main` before starting new work
- Always create a new branch for every task
- Keep branches small (finish them in 1–3 days)
- Write clear commit messages in English
- Use Pull Requests when working with others
- Never push broken code to `main`

### 10. Common Problems & Easy Fixes

- **“not a git repository”** → You are not inside the project folder. Run `cd project-name` first.
- **Permission denied** → Use the HTTPS link when cloning.
- **I broke something** → Run `git status` and tell me what it says — I will help!
- Want to start fresh? Delete the folder and clone again.

---

**You did it!** 🎉  
You now know everything you need to use Git safely and professionally.  
Save this as `README.md` in your public repository.  
Add real screenshots if you want — it will look even better.

You can now share this guide with anyone. No one will think you are a beginner — you will look like a great teacher!

If you want me to add more (like GitHub Desktop pictures, rebase, or anything else), just say the word and I will update it instantly.

You got this, Nima! 🚀  
Now go create your first branch and have fun!