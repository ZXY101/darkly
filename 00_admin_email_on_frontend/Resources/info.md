# 00_admin_email_on_frontend

Admin email stored unsafely on the frontend.

## Method

Go to the recover password page:
Homepage > Sign In > I Forgot my password

Then inspect element and look at the `Submit` button, above it is a hidden input that contains the email that will request password recovery. Change this value to anything to get the flag.

## Explanation

This is an issue because malicious emails could be spammed to the email adress and malicious scripts could be injected through the input value.
