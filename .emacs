(cd "~/Documents/author")
(load-theme 'manoj-dark)
(setq vc-follow-symlinks t)

;; make the GUI less terrible
(add-to-list 'default-frame-alist '(font . "Ubuntu Mono-20"))
(tool-bar-mode 0)

;; don't clutter up working directory with backup files
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups")))) 
;; don't clutter up working directory with autosave files
(setq auto-save-file-name-transforms
      '((".*" "~/.emacs.d/auto-save-list/" t))) 


(recentf-mode 1)
(setq recentf-max-menu-items 100)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(show-paren-mode 1)
(global-visual-line-mode t)
(line-number-mode 0) ; visual-line-mode appears to break this, so disable
(column-number-mode 1)
(desktop-save-mode 1)

;; makes desktop-save-mode work in terminal                                     
(setq desktop-restore-forces-onscreen nil)                                      
(add-hook 'desktop-after-read-hook
          (lambda ()
            (frameset-restore
            desktop-saved-frameset
            :reuse-frames (eq desktop-restore-reuses-frames t)
            :cleanup-frames (not (eq desktop-restore-reuses-frames 'keep))
            :force-display desktop-restore-in-current-display
            :force-onscreen desktop-restore-forces-onscreen)))

(defalias 'yes-or-no-p 'y-or-n-p)
(global-hl-line-mode 1)
;(global-display-fill-column-indicator-mode) ; show where column 80 is..
;(setq-default fill-column 80)               ; and I want column 80 everywhere.. 

(load "~/Documents/GitHub/emacs-for-writing/wc-goal-mode.el")
(add-hook 'org-mode-hook #'wc-goal-mode) ; word count!

(setq display-time-24hr-format 1)
(display-time-mode 1)
(display-battery-mode 1)
(setq-default ispell-program-name "/opt/homebrew/bin/aspell")
(windmove-default-keybindings) ; shift-left or right etc better than other-window C-x o


;; org-mode
(setq org-odt-preferred-output-format "docx")
(add-hook 'org-mode-hook 'turn-on-flyspell)
(setq org-replace-disputed-keys 'true) ; allows use of shift-arrow keys to navigate between buffers, even in org mode


;; UNDER CONSIDERATION
;; critical for working with others
(setq-default indent-tabs-mode nil) ;; always use spaces 


;; Helps keep current text centered vertially, helpful to see the outline you've written below the current line, and keep the text in the middle of the display, particularly on laptops.
(setq maximum-scroll-margin 0.5)

(setq scroll-margin 20)



;;;


(defun swap-buffers ()
  (interactive)
  (window-swap-states))

(global-unset-key [f4])
(global-set-key [f4] (lambda () (interactive) (always-list-buffers)))



(defun always-list-buffers ()
  "When called, make sure that the user is switched to the current buffer list, no matter what."
  (interactive)
  (if (get-buffer "*Buffer List*")
      (switch-to-buffer "*Buffer List*")
    (list-buffers)))


(global-unset-key [f12])
(global-set-key [f12] (lambda () (interactive) (edit-dotemacs)))

(defun edit-dotemacs ()
  "Load the .emacs file into a buffer for editing."
  (interactive)
  (find-file "~/.emacs"))
