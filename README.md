# emacs-for-writing

emacs - terminal, keys work as expected, as does window resizing
emacs --cosk - keys works as expected, but window resizing doesn't
emacs-macos -- can't get the option key to work as meta, so it's off thelist.

so it's either use emacs in terminal (entirely plausibe)
or try something like better snap tool instead of magnet
terminal for now

1. Install emacs: `brew install emacs`
   This is terminal/command line emacs, which I use to keep keybindings consistent with my external keyboard when I ssh into remote machines and also years of muscle memory.

   You might want to consider any of these alternatives (which will [need full disk permission](https://emacs.stackexchange.com/a/53037/8287).)
   `brew install --cask emacs` # normal emacs, runs as a GUI app
   
   Or:
   `brew tap railwaycat/emacsmacport` # better for MacOS
   `brew install --cask emacs-mac-spacemacs-icon` # better for MacOS

   Consider possibly relevent settings for --cask emacs (NOT emacs-mac):
    (setq mac-command-modifier 'meta)
    (setq mac-option-key-is-meta t)


2. Clone this repo using GitHub Desktop.
3. Make a link from the .emacs file hidden in this repository to your home directory (~), where Emacs will look for it:
   `cd ~ && ln -s Documents/GitHub/emacs-for-writing/.emacs`
4. Launch emacs inside a terminal!
5. Install extra apps that are helpful:
   `brew install aspell`
      bret install ag
6. Install a high-quality terminal and configure the terminal with a decent font:
   `brew install kitty`
   `cd ~/.config/kitty`
   `ln -s ~/Documents/GitHub/emacs-for-writing/kitty.conf`

7. Install the font
   https://design.ubuntu.com/font/
   Download and double click on each UbuntuMono....ttf file.
   Then click 'install font'.


