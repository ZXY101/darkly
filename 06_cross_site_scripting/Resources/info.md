# 06_cross_site_scripting

Able to execute custom js.

## Method

Go to the Feedback page
Homepage > Leave a Feedback

Type `script` in the name field and submit.

## Explanation

Be sure to sanitize your inputs to prevent custom scripts from being executed, people can run their own malicious custom scripts otherwise.
