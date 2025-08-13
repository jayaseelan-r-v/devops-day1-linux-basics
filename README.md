# Day 1 – Linux + Git + EC2
Quick-start files for your Day 1 practice.

## Files
- `health.sh` – Prints a simple health report (CPU, RAM, Disk, Top processes).
- `index.html` – A tiny page to replace Nginx default for a visual check.
- `.gitignore` – Basic ignore rules.

## How to run health.sh
```bash
chmod +x health.sh
./health.sh
```

## Nginx index upload (once EC2 + Nginx are ready)
```bash
# from your laptop, replace values accordingly
scp -i ~/.ssh/your-key.pem index.html ubuntu@YOUR_PUBLIC_DNS:/tmp/index.html

# on EC2
sudo mv /tmp/index.html /var/www/html/index.html
sudo systemctl restart nginx
```

Add, commit, and push these files to a repo named `devops-day1-linux-basics`.


## What I learned
- Permissions 600/640/644
- health.sh basics
