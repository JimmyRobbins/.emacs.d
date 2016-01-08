;; Settings for Flycheck

(add-hook 'after-init-hook #'global-flycheck-mode)

(setq-default flycheck-disabled-checkers '(emacs-lisp
					   emacs-lisp-checkdoc)) 


(provide 'settings-flycheck)
