# How to Clean Git Commit History

```sh
git checkout --orphan cleaned-commit-history
git add -A
git commit -m "Cleaned Commit History"
git branch -D main
git branch -m main
git push --force --set-upstream origin main -v
git fetch -v
git status
```
