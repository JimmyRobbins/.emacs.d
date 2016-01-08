;; Settings for the shell

;; Use system path when on mac
(when is-mac
  ;; (require-package 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

;; use hippie-expand for tab completion in shell
(define-key shell-mode-map [(tab)] 'hippie-expand)

(defun my-shell-clear ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))

(provide 'settings-shell)
