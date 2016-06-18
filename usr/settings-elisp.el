;; Settings for writing Emacs-Lisp

;; go to function definition with M-. and back again with M-,
(require 'elisp-slime-nav)

(defun my-emacs-lisp-mode-hook ()
  (elisp-slime-nav-mode t)
  (enable-paredit-mode))


(add-hook 'emacs-lisp-mode-hook 'my-emacs-lisp-mode-hook)

(provide 'settings-elisp)
