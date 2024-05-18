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

-Some useful functions

`mkcd` who make a directory and then go in.

`extract` who extract some compressed file (11 types)

- And a custom ps1 for color and stuff

The `.profile` is not doing a lot of things , it just do one : starting bash.

The neofetch config is made of 2 file :
`ascii.txt` which just contain ascii of aperture sciences for the ascii logo of neofetch, you can modify it as you want.

`config.conf` which modified the OS and kernel name and the ascii input.




- There is probably a lot of problems, if you find one create an issue and I'm gonna do my best !
