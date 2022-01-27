(cd "~/Documents")
(load-theme 'manoj-dark)
(setq vc-follow-symlinks t)

;; don't clutter up working directory with backup files
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups")))) 
;; don't clutter up working directory with autosave files
(setq auto-save-file-name-transforms
      '((".*" "~/.emacs.d/auto-save-list/" t)))       


(show-paren-mode 1)
(global-visual-line-mode t)
(line-number-mode 0) ; visual-line-mode appears to break this, so disable
(desktop-save-mode 1)
(defalias 'yes-or-no-p 'y-or-n-p)
(global-hl-line-mode 1)
(global-display-fill-column-indicator-mode) ; show where column 80 is..
(setq-default fill-column 80)               ; and I want column 80 everywhere.. 
(menu-bar-mode 0)
(display-time-mode 1)
(display-battery-mode 1)
(setq-default ispell-program-name "/opt/homebrew/bin/aspell")
(windmove-default-keybindings) ; shift-left or right etc better than other-window C-x o

;; UNDER CONSIDERATION
;; critical for working with others
(setq-default indent-tabs-mode nil) ;; always use spaces 


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
