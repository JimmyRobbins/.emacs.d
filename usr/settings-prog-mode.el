;; Settings for prog-mode, code that tuns for all programming modes

(require 'column-enforce-mode)

(defun my-prog-mode-hook ()
  (column-enforce-mode)
  (diminish 'column-enforce-mode)
  (hs-minor-mode)
  (column-enforce-mode)
  (electric-pair-mode 1))

(add-hook 'prog-mode-hook 'my-prog-mode-hook)

(provide 'settings-prog-mode)
