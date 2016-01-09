;; Settings for the appearance of Emacs

;; Fullscreen on startup
(set-frame-parameter nil 'fullscreen 'fullboth)

;; Font 
(set-face-attribute 'default nil :height 150) 
(set-face-attribute 'default nil :family "Inconsolata") 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Get rid of visual clutter ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-no-scroll-bar)

;; Diminish the mode line
(require 'diminish)
(diminish 'yas/minor-mode)
(diminish 'undo-tree-mode)

;;;;;;;;;;;;;;;;;;;;;;;;
;; Add visual clutter ;;
;;;;;;;;;;;;;;;;;;;;;;;;

(show-paren-mode t)
(global-hl-line-mode 1)
(setq-default indicate-buffer-boundaries 'left)
(setq-default indicate-empty-lines +1)
(display-time)
(which-function-mode)

;; Color Themes
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'dark)
(enable-theme 'solarized)
 
(provide 'cosmetics)
