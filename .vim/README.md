font: hack regular 10
```
sudo apt install vim vim-gtk ctags  
```

To generate a ctags use this command `ctags -R` in the root of your project.

you can use this plugin https://github.com/vim-php/phpctags to generate ctags for php code.
move phpctags to this folder: /usr/local/bin
don't forget to set the primession to 777.
to use it, use this command: `phpctags -R`
