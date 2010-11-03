;; for all buffers
(global-font-lock-mode 1)

(transient-mark-mode 1)

;;no tabs, only spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)

;; Don't display the 'Welcome to GNU Emacs' buffer on startup
(setq inhibit-startup-message t)

;; Display this instead of "For information about GNU Emacs and the
;; GNU system, type C-h C-a.". This has been made intentionally hard
;; to customize in GNU Emacs so I have to resort to hackery.
(defun display-startup-echo-area-message ()
  ""
  (message ""))

;; Don't insert instructions in the *scratch* buffer
(setq initial-scratch-message nil)

;; Display the line and column number in the modeline
(setq line-number-mode t)
(setq column-number-mode t)
(line-number-mode t)
(column-number-mode t)

;; syntax highlight everywhere
(global-font-lock-mode t)

;; Show matching parens (mixed style)
(show-paren-mode t)
(setq show-paren-delay 0.0)

;; Highlight selection
(transient-mark-mode t)

;; make all "yes or no" prompts show "y or n" instead
(fset 'yes-or-no-p 'y-or-n-p)

;; I use version control, don't annoy me with backup files everywhere
(setq make-backup-files nil)
(setq auto-save-default nil)

;; save backup files in this directory
;;(setq backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))

;; require final new line
(setq require-final-newline t)

;;delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
