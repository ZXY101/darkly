# 11_unsecure_files

Password stored inside of an unsecure file.

## Method

Go to `http://192.168.1.43/robots.txt`, a `robots.txt` file tells web crawlers which pages or files it cant request from a site.

https://support.google.com/webmasters/answer/6062608?hl=en

From here we can see that there is a page/file called `/whatever`, go to `192.168.1.43/whatever`

Here we see a file called `htpasswd`, open it with a text editor.

We see: `root:8621ffdbc5698829397d97767ac13db3`

Using https://www.md5online.org/md5-decrypt.html we can decrypt the password, we now have the login deatils.

- User:`root` 
- Password:`dragon`

Go to `http://192.168.1.43/admin/` and enter the login details to get the flag.

## Explnation

There are many ways to protect your files such as using a router or a `.htaccess` file, make sure the user can only access files that you intend them to.
