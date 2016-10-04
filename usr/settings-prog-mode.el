;; Settings for prog-mode, code that tuns for all programming modes

(defun my-prog-mode-hook ()
  (projectile-mode)
  (hs-minor-mode))

(add-hook 'prog-mode-hook 'my-prog-mode-hook)

(provide 'settings-prog-mode)
