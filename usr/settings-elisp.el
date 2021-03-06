;; Settings for writing Emacs-Lisp


(defun my-emacs-lisp-mode-hook ()
  ;; go to function definition with M-. and back again with M-,
  (elisp-slime-nav-mode t)
  (enable-paredit-mode)
  (eldoc-mode)
  (prettify-symbols-mode))


(add-hook 'emacs-lisp-mode-hook 'my-emacs-lisp-mode-hook)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; configuring paredit mode ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; code from John Wiegley
(defun slurp-all-the-way-forward ()
  (interactive)
  (catch 'done
    (while (not (eobp))
      (save-excursion
        (paredit-forward-up)
        (if (eq (char-after) ?\) )
            (throw 'done t)))
      (paredit-forward-slurp-sexp))))

;;; paredit keybindings
;; (define-key paredit-mode-map (kbd "C-M-\)") 'slurp-all-the-way-forward)

(provide 'settings-elisp)
