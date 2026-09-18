# How to Replace Author and Committer Email Addresses in All Commits of a Git Repository

```sh
git filter-repo --force --commit-callback '
commit.author_email = b"abdullah_as-sadeed.bd@protonmail.com"
commit.committer_email = b"abdullah_as-sadeed.bd@protonmail.com"
'

# Restore all fetch and push origin URLs.

git push --force --all
git push --force --tags
```
