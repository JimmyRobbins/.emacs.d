;; settings for editing plain text

(defun my-text-mode-hook ()
  (visual-line-mode)
  (flyspell-mode))

(add-hook 'text-mode-hook 'my-text-mode-hook)

(provide 'settings-text)
