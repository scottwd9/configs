(add-to-list 'load-path "~/.emacs.d/")

;; for all buffers
(global-font-lock-mode 1)

(transient-mark-mode 1)

;;no tabs, only spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)

(setq inhibit-startup-message t
inhibit-startup-echo-area-message t)

;; Display this instead of "For information about GNU Emacs and the
;; GNU system, type C-h C-a.". This has been made intentionally hard
;; to customize in GNU Emacs so I have to resort to hackery.
(defun display-startup-echo-area-message ()
  ""
  (message ""))

;; Display the line and column number in the modeline
(setq line-number-mode t)
(setq column-number-mode t)
(line-number-mode t)
(column-number-mode t)

;; syntax highlight everywhere
(global-font-lock-mode t)

;; Show matching parens (mixed style)
(show-paren-mode t)
(setq show-paren-delay 0.5)

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

(menu-bar-mode -1)
(if window-system (tool-bar-mode -1))
(if window-system (scroll-bar-mode -1))

;;org-mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

(require 'color-theme)
(setq color-theme-load-all-themes nil)
(color-theme-initialize)
(require 'color-theme-irblack)
(if window-system (color-theme-irblack) )
