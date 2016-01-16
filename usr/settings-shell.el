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


(define-key shell-mode-map (kbd "C-l") 'my-shell-clear)
(define-key shell-mode-map (kbd "<tab>") 'hippie-expand)
(define-key shell-mode-map (kbd "<up>") 'comint-previous-input)
(define-key shell-mode-map (kbd "<down>") 'comint-next-input)

(provide 'settings-shell)
