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
(set-frame-font "Menlo-12")

;; require final new line
(setq require-final-newline t)

;; delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; use visual bell, no beeps!
(setq visible-bell t)

;; Start server
(server-start)
