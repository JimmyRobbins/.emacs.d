;; My Settings for Magit

(add-hook 'magit-commit-setup-hook 'evil-insert-state)

(define-key magit-popup-mode-map [escape] 'magit-popup-quit)

(provide 'settings-magit)
