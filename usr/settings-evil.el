;; Settings for evil mode

(require 'evil)
(evil-mode 1)

;; Ocassionally default to emacs state
(evil-set-initial-state 'shell-mode 'emacs)
(evil-set-initial-state 'help-mode 'emacs)

(provide 'settings-evil)
