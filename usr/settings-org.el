;; Settings for org mode

(defun my-org-mode-hook ()
  (visual-line-mode t)
  (flyspell-mode t))

(add-hook 'org-mode-hook 'my-org-mode-hook)

(provide 'settings-org)
