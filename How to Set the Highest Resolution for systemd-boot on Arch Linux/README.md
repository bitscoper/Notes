# How to Set the Highest Resolution for systemd-boot on Arch Linux

Open the `/boot/loader/loader.conf` file in your text editor with superuser privileges, then edit the following setting. Uncomment it if necessary.

```ini
console-mode max
```

Save the file, then reboot your system.
