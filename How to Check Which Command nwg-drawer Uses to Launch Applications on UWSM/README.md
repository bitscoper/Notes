## How to Check Which Command nwg-drawer Uses to Launch Applications on UWSM

```sh
sudo -E strace -f -e trace=execve -s 200 -o /tmp/nwg-drawer.strace nwg-drawer -wm uwsm
```
