;; My custom global keybindings
;; 
;; Mode specific keybindings are located in that mode's
;;   settings-<mode-name> file

;; Escape should get us out of everything
(define-key evil-normal-state-map [escape] 'keyboard-escape-quit)
(define-key evil-visual-state-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Modes without their own settings file ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; use vim keys to move in packages
(define-key package-menu-mode-map "j" 'next-line)
(define-key package-menu-mode-map "k" 'previous-line)
(define-key package-menu-mode-map "l" 'right-char)
(define-key package-menu-mode-map "^" 'back-to-indentation)
(define-key package-menu-mode-map "/" 'isearch-forward)
(define-key package-menu-mode-map "?" 'isearch-backward)
(define-key package-menu-mode-map [escape] 'keyboard-quit)


(provide 'my-key-bindings)
