#!/usr/bin/env bash
# Exit immediately if a command fails (-e),
# treat unset variables as errors (-u),
# and ensure pipelines fail if any command fails (pipefail)
set -euo pipefail
echo ""
echo ""

# The target repository is passed as the first command-line argument.
# In this setup, the cron job invokes the script as:
#   auto-commit.sh /path/to/repository
REPO_DIR="${1:?usage: auto-commit.sh /path/to/repo}"
cd "$REPO_DIR"

echo "|--- $(basename "$REPO_DIR") $(date +'%Y-%m-%d %H:%M:%S %Z') ---|"
# print a new datetime to our logfile
echo "change directories to vault root" 

echo "copy custom templates to READ ONLY folder"
cp -a  obsidian-plugins/templates/custom/. Templates\ -\ READ\ ONLY

echo "git add all"
git add -A

# Check if there is anything staged for commit
if git diff --cached --quiet; then
  echo "No changes have been made, so no commit will be created."
else
  # Create a commit with a timestamp
  git commit -m "Automated commit: $(date +'%Y-%m-%d %H:%M:%S %Z')"
fi

echo "|------------------------ END ----------------------------|"
