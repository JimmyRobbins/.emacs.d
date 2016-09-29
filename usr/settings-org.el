;; Settings for org mode

;;; Minor Modes to associate with org buffers
(defun my-org-mode-hook ()
  (visual-line-mode t)
  (flyspell-mode t))

(add-hook 'org-mode-hook 'my-org-mode-hook)


;;;;;;;;;;;;;;;;
;; org-agenda ;;
;;;;;;;;;;;;;;;;

(setq org-agenda-restore-windows-after-quit t)

;;;;;;;;;;;;;;;;;
;; org-capture ;;
;;;;;;;;;;;;;;;;;

(setq org-default-notes-file (concat org-directory "/notes.org"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Babel and code evaluation ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'ob-python)


(provide 'settings-org)
