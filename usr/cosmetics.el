;; Settings for the appearance of Emacs

;; Fullscreen on startup
(set-frame-parameter nil 'fullscreen 'fullboth)

;; Font size
(set-face-attribute 'default nil :height 150) 

;; Always show matching pairs of parenthesis
(show-paren-mode t)

;; Get rid of visual clutter
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-no-scroll-bar)

;; Color Themes
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'dark)
(enable-theme 'solarized)

(provide 'cosmetics)
