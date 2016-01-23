;; Settings for evil mode

(require 'evil)
(evil-mode 1)

(setq evil-cross-lines t)
(setq evil-want-fine-undo nil)

(require 'evil-surround)
(global-evil-surround-mode 1)

(require 'evil-matchit)
(global-evil-matchit-mode 1)


;; Occasionally default to emacs state
;; (evil-set-initial-state 'shell-mode 'emacs)
(evil-set-initial-state 'help-mode 'emacs)

;;;;;;;;;;;;;;;;;;
;; Key-bindings ;;
;;;;;;;;;;;;;;;;;;

;; Unset keys that I don't use and that get in the way
(define-key evil-normal-state-map (kbd "M-.") nil)


(define-key evil-normal-state-map "j" 'evil-next-visual-line)
(define-key evil-normal-state-map "k" 'evil-previous-visual-line)

(define-key evil-normal-state-map "gf" 'ido-find-file)
(define-key evil-normal-state-map "gF" 'evil-find-file-at-point-with-line)
(define-key evil-normal-state-map "gD" 'dired-jump)
(define-key evil-normal-state-map "gs" 'shell)
(define-key evil-normal-state-map "gb" 'ido-switch-buffer)

(define-key evil-normal-state-map "zA" 'evil-open-folds)
(define-key evil-normal-state-map "z+" 'ispell-buffer) ; Shift-=

(evil-ex-define-cmd "wk" 'my-buffer-write-kill)
(evil-ex-define-cmd "wc" 'my-buffer-write-close)
(evil-ex-define-cmd "k[ill]" 'kill-this-buffer)
(evil-ex-define-cmd "g[it]" 'magit-status)

(provide 'settings-evil)
