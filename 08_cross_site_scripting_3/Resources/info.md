# 06_cross_site_scripting

Able to upload any file.

## Method

Go to the Image Upload page
Homepage > Add Image

Inspect element and click on the file upload input.

Taking note of the input names we can use curl to send a script file.

`curl -X POST -H 'Content-Type: multipart/form-data' -F 'Upload=send' -F 'uploaded=@a.php;type=image/jpeg' 'http://192.168.1.43/?page=upload#' | grep flag`

https://curl.haxx.se/docs/manpage.html

We use `curl` to upload the file this returns an html page with the flag, use `grep` to find the flag.

## Explanation
Being able to upload any file is dangerous since this allows people to send trhough malicious scripts, be sure to validate all input and be strict with what file types are allowed to be sent to the server.
