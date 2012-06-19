;; Load solarized theme
(disable-theme 'zenburn)
(color-theme-solarized-dark)
;;(load-theme 'solarized-dark t)

;; Fix mac keys
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)
(setq ns-command-modifier (quote meta))

;; No scrollbars
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Turn off whitespace mode
(add-hook 'prog-mode-hook 'prelude-turn-off-whitespace t)
(add-hook 'prog-mode-hook 'flyspell-mode 0)

;; Use Inconsolata font
(set-frame-font "Inconsolata-14")

;; Start server
(server-start)
