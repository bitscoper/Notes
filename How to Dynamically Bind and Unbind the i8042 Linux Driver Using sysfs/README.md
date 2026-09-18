# How to Dynamically Bind and Unbind the i8042 Linux Driver Using sysfs

## Unbind

```sh
echo -n i8042 | sudo tee /sys/bus/platform/drivers/i8042/unbind >/dev/null
```

## Bind

```sh
echo -n i8042 | sudo tee /sys/bus/platform/drivers/i8042/bind >/dev/null
```
