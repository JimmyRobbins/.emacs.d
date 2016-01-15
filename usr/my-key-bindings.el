;; My custom global keybindings
;;
;; Mode specific keybindings are located in that mode's
;;   settings-<mode-name> file

;; Escape should get us out of everything
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

;; Make magit easier to launch (I don't need mail)
(global-set-key (kbd "C-c m")
                (lambda ()
                  (interactive)
                  (magit-status)))

;; Bring the line below onto the end of current line
(global-set-key (kbd "M-j")
                (lambda ()
                  (interactive)
                  (join-line -1)))

;; expand-region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; Smart M-x!
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Moving around windows with C-arrows
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

(global-set-key (kbd "C-x M-k") 'my-kill-other-buffer)

;; Recent files
(require 'recentf)
(recentf-mode 1)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
(define-key recentf-dialog-mode-map '[escape] 'recentf-cancel-dialog)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Modes without their own settings file ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; use vim keys to move in packages

(evil-add-hjkl-bindings package-menu-mode-map 'emacs
  "/" 'isearch-forward
  "?" 'isearch-backward)

(provide 'my-key-bindings)
