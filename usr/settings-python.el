;; My settings for editing python files


;;; Set up the path to work
(when is-mac
  (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

(require 'column-enforce-mode)

;;; Use Elpy
(elpy-enable)
(elpy-use-ipython)
(setq elpy-rpc-backend "jedi")
(setq elpy-rpc-python-command "python3")
(setq python-shell-interpreter "python3")

;;; Virtual environments... this isn't quite working
(pyvenv-mode)
(defalias 'workon 'pyenv-workon)

;;; python mode hook

(defun my-python-hook ()
  (setq fill-column 80)
  (column-enforce-mode t)
  (linum-mode t))

(add-hook 'python-mode-hook 'my-python-hook)


;;; Set up my keymaps
(define-key elpy-mode-map (kbd "M-,") 'pop-tag-mark)

(define-key inferior-python-mode-map (kbd "C-l") 'my-shell-clear)
(define-key inferior-python-mode-map (kbd "<tab>") 'hippie-expand)
(define-key inferior-python-mode-map (kbd "<up>") 'comint-previous-input)
(define-key inferior-python-mode-map (kbd "<down>") 'comint-next-input)


(provide 'settings-python)
