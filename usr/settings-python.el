;; My settings for editing python files


(when is-mac
  (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

(elpy-enable)
(elpy-use-ipython)

(defun my-python-mode-hook ()
  (setq fill-column 80)
  (linum-mode t))

(add-hook 'python-mode-hook 'my-python-mode-hook)

(defalias 'workon 'pyenv-workon)

(define-key elpy-mode-map (kbd "M-,") 'pop-tag-mark)

(define-key inferior-python-mode-map (kbd "C-l") 'my-shell-clear)
(define-key inferior-python-mode-map (kbd "<tab>") 'hippie-expand)
(define-key inferior-python-mode-map (kbd "<up>") 'comint-previous-input)
(define-key inferior-python-mode-map (kbd "<down>") 'comint-next-input)

(provide 'settings-python)
