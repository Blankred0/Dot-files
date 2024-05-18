# Dot Files for iSH

These are some short dot files I've created for iSH with a portal theme.

There are four different files included:

- `.profile` and `.bashrc` are designed to customize the appearance and behavior of the shell.
- `neofetch` is configured for Neofetch.

- I recommend to make a save of your previous dotfile before doing this.

To install these files on Alpine, simply run:

```sh
apk add git bash neofetch
git clone https://github.com/Blankred0/Dot-files
cd Dot-files
mv -f .profile ~/
mv -f .bashrc ~/
mv -f neofetch ~/.config/
```

Feel free to modify and customize these dot files as needed.

# More explanation 
The `.bashrc` file feature a few things :

- Alias of command :
 `ll` for `ls -la`
 `df` for `df -h`
 `free` for `free -m`
 `..` for `cd ..`
 `...` for `cd ../..`
 `neo` for `neofetch`
 `la` for `ls -a`
