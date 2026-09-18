# List of Bloatware Android Packages to Uninstall for User 0 on Xiaomi Redmi A5 4G Global 15.0.30.0.VGWMIXM (Serenity), with Commands

```sh
while read -r package <&3; do [[ -n "$package" && ! "$package" =~ ^# ]] && adb shell pm uninstall --user 0 "$package"; done 3< Packages.txt
```
