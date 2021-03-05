# Rebasing branch on top master/main to make history linear and avoid conflict

git checkout master
git pull # Sync with remote repo
git log --graph --oneline --all # See the working tree, the branch should be below master and likely to have a conflict
git checkout <brach-name>
git rebase master # Rebasing branch
git log --graph --oneline --all # You should see the branch already on top master
git merge <branch-name> # normally, no conflict
git push --delete origin <branch-name> # Deleting branch on remote repository
git branch -d <branch-name> # Deleting branch on the local repository
git push # Push back merge files with clean branch