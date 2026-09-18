# How to Count Total Insertions and Deletions in a Git Repository

```sh
git log --pretty=tformat: --numstat | awk '{ add += $1; del += $2 } END { print "Insertions:", add, "Deletions:", del }'
```
