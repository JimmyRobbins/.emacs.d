;; Settings for evil mode

(require 'evil)
(evil-mode 1)

(require 'evil-surround)
(global-evil-surround-mode 1)


;; Occasionally default to emacs state
(evil-set-initial-state 'shell-mode 'emacs)
(evil-set-initial-state 'help-mode 'emacs)

;;;;;;;;;;;;;;;;;;
;; Key-bindings ;;
;;;;;;;;;;;;;;;;;;

(define-key evil-normal-state-map "gf" 'ido-find-file)
(define-key evil-normal-state-map "gF" 'evil-find-file-at-point-with-line)
(define-key evil-normal-state-map "gD" 'dired-jump)
(define-key evil-normal-state-map "gs" 'shell)
(define-key evil-normal-state-map "gb" 'ido-switch-buffer)

(define-key evil-normal-state-map "z+" 'ispell-buffer) ; Shift-=

(evil-ex-define-cmd "wk" 'undefined)
(evil-ex-define-cmd "k[ill]" 'kill-this-buffer)

(provide 'settings-evil)
