;; Settings for the appearance of Emacs

;; Fullscreen on startup
(set-frame-parameter nil 'fullscreen 'fullboth)

;; Font
(set-face-attribute 'default nil :height 150)
(set-face-attribute 'default nil :family "Inconsolata")

;; Get rid of extra whitespace every-time we save
(add-hook 'before-save-hook 'whitespace-cleanup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Get rid of visual clutter ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-no-scroll-bar)

;; Diminish the mode line
(require 'diminish)
(diminish 'yas-minor-mode)
(diminish 'undo-tree-mode)
(diminish 'hs-minor-mode)
(diminish 'column-enforce-mode)
(diminish 'paredit-mode)
(diminish 'elsip-slime-nav-mode)
(diminish 'auto-revert-mode)
(diminish 'rainbow-delimiters-mode)
(diminish 'rainbow-mode)
(diminish 'eldoc-mode)

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
(require 'solarized)

(setq solarized-use-less-bold t)
(load-theme 'solarized-dark t)

;; Rainbow Mode
(require 'rainbow-mode)
(setq rainbow-x-colors nil)
(rainbow-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Change Colors about a bit ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq s-base03    "#002b36"
      s-base02    "#073642"
      ;; emphasized content
      s-base01    "#586e75"
      ;; primary content
      s-base00    "#657b83"
      s-base0     "#839496"
      ;; comments
      s-base1     "#93a1a1"
      ;; background highlight light
      s-base2     "#eee8d5"
      ;; background light
      s-base3     "#fdf6e3"

      ;; Solarized accented colors
      yellow    "#b58900"
      orange    "#cb4b16"
      red       "#dc322f"
      magenta   "#d33682"
      violet    "#6c71c4"
      blue      "#268bd2"
      cyan      "#2aa198"
      green     "#859900"

      ;; Darker and lighter accented colors
      ;; Only use these in exceptional circumstances!
      yellow-d  "#7B6000"
      yellow-l  "#DEB542"
      orange-d  "#8B2C02"
      orange-l  "#F2804F"
      red-d     "#990A1B"
      red-l     "#FF6E64"
      magenta-d "#93115C"
      magenta-l "#F771AC"
      violet-d  "#3F4D91"
      violet-l  "#9EA0E5"
      blue-d    "#00629D"
      blue-l    "#69B7F0"
      cyan-d    "#00736F"
      cyan-l    "#69CABF"
      green-d   "#546E00"
      green-l   "#B4C342")

  ;; General purpose colors
(set-face-attribute 'show-paren-match nil
		    :background blue
		    :foreground s-base02)
(set-face-attribute 'show-paren-mismatch nil :background red)

;; Font lock faces
(set-face-attribute 'font-lock-constant-face nil
		    :weight 'normal)
(set-face-attribute 'font-lock-comment-face nil
		    :slant 'italic)


(with-eval-after-load 'column-enforce-mode
  (set-face-attribute 'column-enforce-face nil
		      :background red
		      :foreground s-base2))

;;;;;;;;;;;;;;;;;;;;;;;
;; Shell Mode Colors ;;
;;;;;;;;;;;;;;;;;;;;;;;


(with-eval-after-load 'comint
  (set-face-attribute 'comint-highlight-prompt nil
		      :foreground green)
  (set-face-attribute 'comint-highlight-input nil
		      :foreground s-base01))

;;;;;;;;;;;;;;;;;;;;;;
;; Mode line colors ;;
;;;;;;;;;;;;;;;;;;;;;;

;; (set-face-attribute 'mode-line-highlight nil
;;                     :foreground yellow)
;; (set-face-attribute 'mode-line nil :background s-base01)
;; (set-face-attribute 'mode-line-inactive nil :background s-base02)
;; (set-face-attribute 'which-func nil :foreground green
;;                                     :slant 'italic)


(provide 'cosmetics)
