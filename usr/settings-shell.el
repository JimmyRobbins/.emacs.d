;; Settings for the shell

;; Use system path when on mac
(when is-mac
  (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

(global-hl-line-unhighlight)

(defun my-shell-clear ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))


(define-key shell-mode-map "C-l" 'my-shell-clear)
(define-key shell-mode-map [(tab)] 'hippie-expand)

(provide 'settings-shell)
