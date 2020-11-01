# 12_brute_force_attack

Able to brute force login due to simple username and password.

## Method

Execute the `a.sh` script. It executes a dictionary based brute force attack on the login page.

It uses a list of common usernames and passwords to try and login.

After running the script for a while the script successfuly logs in.

- username: `admin`
- password: `shadow`

The script displays the flag, but you can also use the log in details on `http://192.168.1.43/index.php?page=signin` to get the flag.

## Explanation

This is a very simple and easy to thwart attack. It was only successful due to the very simple password.

To prevent brute force attacks simply enforce that users are required to enter more complex passwords.

Increasing the length of your password makes it exponentially harder to brute force and including complex characters will make it near impossible to simply guess.
