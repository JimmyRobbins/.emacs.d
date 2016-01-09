;; settings-sclang --- Configurations for using SuperCollider in Emacs

;; Enable sclang extensions
(add-hook 'sclang-mode-hook 'sclang-extensions-mode)

;; sclang-mode keymap
(define-key sclang-mode-map (kbd "C-.") 'sclang-server-free-all)

(provide 'settings-sclang)
