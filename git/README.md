**Here is your complete, clean, professional, and super-simple English Git guide.**  

Copy everything below (from `# Git for Absolute Beginners` to the end) and paste it directly into a new `README.md` file in your public GitHub repository. It is written for absolute beginners, uses only short sentences, and will not embarrass you — it looks professional and friendly.

---

# Git for Absolute Beginners - Complete Step-by-Step Guide (2026)

This guide is made for **people who know nothing about Git**.  
Every step is explained simply. You can follow it exactly and never get stuck.

### 1. What is Git?

Git is a free tool that saves every version of your project.  
You can:
- Go back to any old version if you make a mistake
- Work together with other people on the same project
- See exactly who changed what

Think of it like the "History" button in Google Docs, but much stronger.

### 2. What is a Branch in Git? (Very Important!)

A **branch** is like a safe playground for your code.

- The main playground is called `main` (sometimes `master`).  
- When you want to add something new or fix a bug, you create a **new branch**.  
- You work only on your branch. The main code stays safe.  
- When your work is perfect, you combine (merge) your branch back into `main`.

**Never work directly on the `main` branch!**




**Simple example:**  
Imagine the main road is `main`. You build a new road (branch) called `feature/login`. You test everything on your new road. When it works, you connect your road to the main road.

### 3. Install Git on Your Computer

1. Go to this website: [https://git-scm.com/downloads](https://git-scm.com/downloads)  
2. Download the version for your computer (Windows, Mac, or Linux).  
3. Install it with all default settings (just click "Next").




### 4. Set Up Your Name and Email (Do This Once)

Open **Terminal** (on Mac/Linux) or **Git Bash** (on Windows) and run these two lines:

```bash
git config --global user.name "Your Full Name"
git config --global user.email "your-email@example.com"
```

Replace with your real name and email.

### 5. Clone (Download) a Project from GitHub

1. Go to the project page on GitHub.  
2. Click the green **Code** button.  
3. Copy the HTTPS link.




4. Open Terminal and go to a folder where you want to save the project:

```bash
cd ~/Desktop
```

5. Download the project:

```bash
git clone https://github.com/username/project-name.git
```

6. Enter the project folder:

```bash
cd project-name
```

### 6. Your Safe Daily Workflow (Follow This Every Time!)

```bash
# Step 1: Get the latest code from the main branch
git switch main
git pull

# Step 2: Create your own safe branch
git switch -c feature/your-feature-name
# Example: git switch -c feature/add-login-button

# Step 3: Do your work (edit files in VS Code or any editor)

# Step 4: Save your changes
git status                  # see what changed
git add .                   # add all changes
git commit -m "Add login button"   # write a clear message

# Step 5: Send your changes to GitHub
git push -u origin feature/your-feature-name   # only first time
# After that, just type:
git push
```







### 7. Important Commands You Will Use Every Day

| Command                              | What it does                              |
|--------------------------------------|-------------------------------------------|
| `git status`                         | Shows what changed                        |
| `git switch main`                    | Go to main branch                         |
| `git switch -c feature/name`         | Create and go to new branch               |
| `git add .`                          | Prepare all changes                       |
| `git commit -m "message"`            | Save changes with a message               |
| `git push`                           | Upload to GitHub                          |
| `git pull`                           | Download latest changes                   |
| `git branch`                         | List all branches                         |
| `git log --oneline --graph`          | See nice history of commits               |

### 8. Best Practices (Very Important Rules)

- Always start with `git pull` on `main`  
- Always create a new branch for every task  
- Keep branches small (finish them in 1–3 days)  
- Write clear commit messages in English  
- Branch name examples: `feature/add-login`, `bugfix/fix-button`, `hotfix/crash-issue`  
- Never push directly to `main`

### 9. What to Do After You Finish Your Work

1. Push your branch to GitHub  
2. Go to the project page on GitHub  
3. Click the big green button **"Compare & pull request"**  
4. Write a nice title and description  
5. Click **Create pull request**

Someone will review your work and merge it.

### 10. Common Problems & Easy Fixes

**Error: "not a git repository"**  
→ You are not inside the project folder. Run `cd project-name` first.

**Error: permission denied**  
→ Use the HTTPS link (not SSH) when cloning.

**You want to start fresh**  
→ Delete the folder and clone again.

---

**You are now ready!**  

Copy the whole guide above into your `README.md`.  
Add the images if you want (they are clean and free to use).  

This guide is 100% safe to publish publicly. It is simple, clear, and helpful. No one will think you are a beginner when they read it — they will think you are a great teacher!

If you want me to add anything (more pictures, a section about GitHub Desktop, or SSH setup), just tell me and I will update it in 10 seconds.

Good luck, and enjoy Git! 🚀  
You can now share this with anyone.