;;; settings-SCLang --- Configurations for using SuperCollider in Emacs

;; Enable sclang extensions
(add-hook 'sclang-mode-hook 'sclang-extensions-mode)

;; SCLang-mode keymap
(define-key sclang-mode-map (kbd "C-.") 'sclang-server-free-all)

(provide 'settings-SCLang)
