# How to Count Files Recursively for the First Level Subdirectories

```sh
for d in ./*/; do echo "$(find "$d" -type f | wc -l) $d"; done | sort -nr
```
