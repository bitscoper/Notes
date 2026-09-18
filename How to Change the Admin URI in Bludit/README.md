# How to Change the Admin URI in Bludit

Open the `bl-kernel/boot/variables.php` file in your text editor with appropriate privileges, and locate the following line:

```php
define('ADMIN_URI_FILTER', 'admin');
```

Change the value of `ADMIN_URI_FILTER` from `admin` to a custom value, such as `secret_passage`:

```php
define('ADMIN_URI_FILTER', 'secret_passage');
```

Your new admin URI will now be `https://domain/secret_passage/`.
