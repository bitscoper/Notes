# How to Find Nix Store Paths that Reference Electron

```sh
find /nix/store -name "*.drv" -exec grep -l "electron" {} \; 2>/dev/null
```
