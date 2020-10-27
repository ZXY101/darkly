# 05_important_flag_as_cookie

Admin flag stored as a cookie that can be edited.

## Method

Inspect element and navigate to the storage tab (firefox).

There as a `i_am_admin` cookie with a value of `68934a3e9455fa72420237eb05902327` which is `false` in md5.

Use https://www.md5online.org/md5-encrypt.html to convert `true` to `b326b5062b2f0e69046810717534cb09`.

Edit the cookies value to `b326b5062b2f0e69046810717534cb09` and refresh the page.

## Explanation

Storing such an important flag in cookies is not a good idea because anyone can edit cookies, rather look at using tokens and other means of validating the user.
