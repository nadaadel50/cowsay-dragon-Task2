# 🐉 Dragon Cowsay Workflow  

This project demonstrates how to use **GitHub Actions with a self-hosted runner** to generate a dragon ASCII art using `cowsay`.  

---

## 🚀 How It Works
1. A **self-hosted runner** is used instead of GitHub-hosted runners.  
2. `cowsay` is installed once on the runner machine.  
3. Each workflow run executes a script (`scripts.sh`) that prints a dragon and saves it to `dragon.txt`.  

---

## ⚙️ Setup Instructions  

### 1️⃣ Prepare your self-hosted runner machine  
Make sure your runner machine has the required packages installed:  

```bash
sudo apt-get update
sudo apt-get install -y cowsay
You only need to do this once per machine.

2️⃣ Make sure the script is executable
bash
Copy
Edit
chmod +x scripts.sh
3️⃣ Run locally (optional)
To test the script on your machine before running GitHub Actions:

bash
Copy
Edit
./scripts.sh
It will generate a dragon.txt file with the ASCII dragon 🐉.

📂 Project Structure
bash
Copy
Edit
.
├── .github
│   └── workflows
│       └── workflow.yml   # GitHub Actions workflow
├── scripts.sh             # Script to run cowsay
├── dragon.txt             # Generated output
└── README.md              # Documentation


🚀 Self-Hosted Runner Guide

This project uses a GitHub Actions Self-Hosted Runner.

▶️ Start the Runner
# If installed as a service
sudo systemctl start actions.runner.<org>-<repo>.<runner-name>.service

# If running manually
./run.sh

⏹ Stop the Runner
# If installed as a service
sudo systemctl stop actions.runner.<org>-<repo>.<runner-name>.service

# If running manually
Ctrl + C

📊 Check Runner Status
# If installed as a service
sudo systemctl status actions.runner.<org>-<repo>.<runner-name>.service

Or in GitHub:

Go to Repo → Settings → Actions → Runners

You’ll see whether the runner is Idle (ready) or Offline (stopped).

🔄 Re-run a Job

Go to GitHub → Actions → Failed Workflow → Rerun Jobs.

Or use CLI:

gh run rerun <run-id>



🐲 Example Output
After running the workflow, you’ll see something like this in dragon.txt:

swift
Copy
Edit
 _______________________________
< Run for cover, I am a Dragon >
 -------------------------------
                    \                    ^    /^
                     \                  / \  // \
                      \   |\___/|      /   \//  .\
                       \  /O  O  \__  /    //  | \ \    
                         /     /  \/_/    //   |  \  \  
                         \@_^_\@'/   \/_   //    |   \   \ 
                         //_^_/     \/_ //     |    \    \ 
                      ( //) |        \///      |     \     \ 
                    ( / /) _|_ /   )  //       |      \     _\
                  ( // /) '/,_ _ _/  ( ; -.    |    _ _\.-~        .-~~~^-.
                (( / / )) ,-{        _      `-.|.-~-.           .~         `.
               (( // / ))  '/\      /                 ~-. _ .-~      .-~^-.  \
               (( /// ))      `.   {            }                   /      \  \
                (( / ))     .----~-.\        \-'                 .~         \  `. \^-.
                           ///.----..>        \             _ -~             `.  ^-`  ^-_
