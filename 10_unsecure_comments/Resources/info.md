# 10_unsecure_comments

Sensitive information found in the comments and exploited.

## Method

Scroll to the bottom of the page and click on the footer `© BornToSec`.
Inspect element and start searching through the elements. If you expand the first 2 divs and then the sections, you will find a large comment block.

At the end of the comment block it says: 
```
<!--You must cumming from : "https://www.nsa.gov/" to go to the next step-->
...
<!--Let's use this browser : "ft_bornToSec". It will help you a lot.-->
```

We can use this information to get the flag.

https://curl.haxx.se/docs/manpage

`curl -A "ft_bornToSec" -e "https://www.nsa.gov/" "http://192.168.1.43/index.php?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c" | grep flag`
## Explanation
