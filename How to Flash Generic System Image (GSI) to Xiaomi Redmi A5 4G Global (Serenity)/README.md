# How to Flash Generic System Image (GSI) to Xiaomi Redmi A5 4G Global (Serenity)

```sh
adb reboot bootloader
```

```sh
fastboot reboot fastboot
```

```sh
fastboot delete-logical-partition product_a
# fastboot delete-logical-partition product_b
# fastboot delete-logical-partition system_ext_a
# fastboot delete-logical-partition system_ext_b

fastboot flash system /path/to/gsi.img

fastboot -w

fastboot reboot
```
