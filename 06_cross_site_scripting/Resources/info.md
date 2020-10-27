# 06_cross_site_scripting

Able to execute custom js.

## Method

Go to the Feedback page
Homepage > Leave a Feedback

Insert anything into the name field.

In the message field you can type `<script> Alert(1) </script>` to get the flag.

## Explanation

Be sure to sanitize your inputs to prevent custom scripts from being executed, people can run their own malicious custom scripts otherwise.
