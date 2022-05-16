# emacs-for-writing

1. Install emacs: `brew install --cask emacs`
   This may [need full disk permission](https://emacs.stackexchange.com/a/53037/8287).

2. Clone this repo using GitHub Desktop.
3. Make a link from the .emacs file hidden in this repository to your home directory (~), where Emacs will look for it:
   `cd ~ && ln -s Documents/GitHub/emacs-for-writing/.emacs`
4. Launch emacs inside a terminal!
5. Install extra apps that are helpful:
   `brew install aspell`  # spell checking
   `brew install ag`      # serious full text searching from the command line
   `brew install --cask libreoffice` # org-mode export to docx/rtf
   
6. Install a readeable modern font
   https://design.ubuntu.com/font/
   Download and double click on each UbuntuMono....ttf file.
   Then click 'install font'.
   If you're using GUI emacs, add this line to your .emacs:
      `(add-to-list 'default-frame-alist '(font . "Ubuntu Mono-22"))`


