;; Settings for Flycheck

(add-hook 'python-mode-hook 'flycheck-mode)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)) 


(provide 'settings-flycheck)
