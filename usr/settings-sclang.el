;; settings-sclang --- Configurations for using SuperCollider in Emacs

(require 'sclang)

(add-to-list
 'exec-path "/Applications/SuperCollider/SuperCollider.app/Contents/MacOS/")

;; Enable sclang extensions
(add-hook 'sclang-mode-hook 'sclang-extensions-mode)
(add-hook 'sclang-mode-hook 'rainbow-delimiters-mode)

;; sclang-mode keymap
(define-key sclang-mode-map (kbd "C-.") 'sclang-server-free-all)

(provide 'settings-sclang)
