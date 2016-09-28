;; Settings for org mode

;;; Minor Modes to associate with org buffers
(defun my-org-mode-hook ()
  (visual-line-mode t)
  (flyspell-mode t))

(add-hook 'org-mode-hook 'my-org-mode-hook)

;;; Org global access keys
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c b") 'org-iswitchb)

;;;;;;;;;;;;;;;;
;; org-agenda ;;
;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-agenda-restore-windows-after-quit t)

;;;;;;;;;;;;;;;;;
;; org-capture ;;
;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-c r") 'org-capture) ; "remember"
(setq org-default-notes-file (concat org-directory "/notes.org"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Babel and code evaluation ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'ob-python)


(provide 'settings-org)
