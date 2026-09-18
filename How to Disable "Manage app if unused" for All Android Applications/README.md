# How to Disable "Manage app if unused" for All Android Applications

```sh
for package in $(pm list packages -3 | cut -f2 -d:); do
  appops set "$package" AUTO_REVOKE_PERMISSIONS_IF_UNUSED ignore
done
```
