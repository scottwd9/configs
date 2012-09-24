;; Load solarized theme
(disable-theme 'zenburn)
(color-theme-solarized-dark)

;; Fix mac keys
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)
(setq ns-command-modifier (quote meta))

;; No scrollbars
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Turn off whitespace mode, flyspell
(add-hook 'prog-mode-hook 'prelude-turn-off-whitespace t)
(add-hook 'prog-mode-hook 'flyspell-mode 0)
(remove-hook 'message-mode-hook 'prelude-turn-on-flyspell)
(remove-hook 'text-mode-hook 'prelude-turn-on-flyspell)

;; Use Inconsolata font
(set-frame-font "Ubuntu Mono-14")

;; require final new line
(setq require-final-newline t)

;; delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; use visual bell, no beeps!
(setq visible-bell t)

;; Start server
(server-start)

(add-to-list 'load-path "~/.emacs.d/personal/scala-emacs")
(require 'scala-mode-auto)

;;(add-hook 'scala-mode-hook
;;          '(lambda ()
;;             (scala-mode-feature-electric-mode)
;;             ))

(require 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
(add-to-list 'load-path "~/.emacs.d/personal/ensime_2.9.2-0.9.8.1/elisp")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(push "~/lib/scala/bin/" exec-path)
(push "~/bin" exec-path)
