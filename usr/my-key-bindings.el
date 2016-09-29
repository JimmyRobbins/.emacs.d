;; My custom global keybindings
;;
;; Mode specific keybindings are located in that mode's
;;   settings-<mode-name> file

;; Escape should get us out of everything
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-ns-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-completion-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-must-match-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-isearch-map [escape] 'abort-recursive-edit)

(global-set-key (kbd "RET") 'newline-and-indent)

;; Typing special characters
(define-key key-translation-map (kbd "M-_") (kbd "—"))

;; Make magit easier to launch
(mapc (lambda (keyboard-string)
        (global-set-key (kbd keyboard-string)
                        (lambda ()
                          (interactive)
                          (magit-status))))
      ;; sometimes I accidentally hold down control
      '("C-c m" "C-c C-m"))

;; Use the clipboard when I want to
(global-set-key (kbd "C-c v") 'clipboard-yank)
(global-set-key (kbd "C-c c") 'clipboard-kill-ring-save)

;; expand-region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; Smart M-x!
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Evil-numbers
(global-set-key (kbd "C-c +") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-c -") 'evil-numbers/dec-at-pt)

(global-set-key (kbd "C-x M-k") 'my-kill-other-buffer)

;;; Org global access keys
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c r") 'org-capture) ; "remember"
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c b") 'org-iswitchb)

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
