;;; wds.el --- Customizations
;;; Commentary:
;;; Code:

(setq-default default-directory "/Users/wscott")
;(setq command-line-default-directory "~")

(load-theme 'leuven t)
(ido-mode t)
(electric-pair-mode t)

(setq prelude-flyspell nil)
(setq prelude-whitespace nil)

(server-start)

(set-frame-font "Menlo-14")
(setq visible-bell t)

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq ns-command-modifier (quote meta))

(setq require-final-newline t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(global-linum-mode 1)

(custom-set-variables
 '(ido-enable-flex-matching t)
 )


(provide 'wds)
;;; wds.el ends here
