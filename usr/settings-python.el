;; My settings for editing python files

(elpy-enable)

(defun my-python-mode-hook ()
  (setq fill-column 80))

(add-hook 'python-mode-hook 'my-python-mode-hook)

(define-key elpy-mode-map (kbd "M-,") 'pop-tag-mark)

(provide 'settings-python)
