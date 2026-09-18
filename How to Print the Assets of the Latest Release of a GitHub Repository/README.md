# How to Print the Assets of the Latest Release of a GitHub Repository

```sh
PAGER=cat \
 gh release view \
 --repo bitscoper/bitscoper_cyberkit \
 --json assets \
 --jq '.assets[].name'
```
