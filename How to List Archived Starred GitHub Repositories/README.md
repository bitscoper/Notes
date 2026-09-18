# How to List Archived Starred GitHub Repositories

```sh
gh api -H "Accept: application/vnd.github+json" '/user/starred?per_page=100' | jq '.[] | select(.archived == true) | {full_name, archived}'
```
