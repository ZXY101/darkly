# 09_manipulate_redirects

Able to change where a button redirects you.

## Method

Scroll to the footer.

Inspect the social media links.

Change the `site` param in the `href` to something else then click on the link to get the flag.

`href=index.php?page=redirect&site=givemetheflagpls`

## Explanation

There's no reason to add a redirect in the `href`, you can just include the url there to prevent any secuirity risks.
