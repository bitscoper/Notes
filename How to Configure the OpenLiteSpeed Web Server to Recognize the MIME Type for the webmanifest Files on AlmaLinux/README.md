# How to Configure the OpenLiteSpeed Web Server to Recognize the MIME Type for the webmanifest Files on AlmaLinux

Open the `/usr/local/lsws/conf/mime.properties` file in your text editor with superuser privileges, then add the following line:

```text
webmanifest = application/json
```

Save the file, then restart your OpenLiteSpeed Web Server.
