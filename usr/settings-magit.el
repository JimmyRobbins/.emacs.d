;; My Settings for Magit

;;; Default to insert state for writing commit messages
(add-hook 'git-commit-setup-hook 'evil-insert-state)

;;; Use vim keybindings in popups
(define-key magit-popup-mode-map [escape] 'magit-popup-quit)
(define-key magit-log-mode-map (kbd "j") 'magit-section-forward)
(define-key magit-log-mode-map (kbd "k") 'magit-section-backward)

(provide 'settings-magit)
