;; Settings for evil mode

(require 'evil)
(evil-mode 1)

;; Occasionally default to emacs state
(evil-set-initial-state 'shell-mode 'emacs)
(evil-set-initial-state 'help-mode 'emacs)

;;;;;;;;;;;;;;;;;;
;; Key-bindings ;;
;;;;;;;;;;;;;;;;;;

(define-key evil-normal-state-map "gf" 'ido-find-file)
(define-key evil-normal-state-map "gD" 'dired-jump)
(define-key evil-normal-state-map "gs" 'shell)
(define-key evil-normal-state-map "gb" 'ido-switch-buffer)
(define-key evil-normal-state-map "gp" 'ispell-word)
(define-key evil-normal-state-map "gP" 'ispell-buffer)

(provide 'settings-evil)
