# How to PGP-Sign All Commits of a Git Repository

```sh
git rebase --rebase-merges --root --exec 'GIT_COMMITTER_DATE="$(git show -s --format=%cI HEAD)" git commit --amend --no-edit -S --date "$(git show -s --format=%aI HEAD)"' && git push --force-with-lease
```
