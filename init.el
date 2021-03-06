;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;
;; ;; Jimmy Robbins' Emacs Configuration!! ;; ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(package-initialize)

(defvar is-mac (equal system-type 'darwin)
  "Are we running on a macinstosh?")

;;;;;;;;;;;;;;;;;;;;;;;;;
;; Loading Elisp files ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/elpa")
(add-to-list 'load-path "~/.emacs.d/usr")

;;;;;;;;;;;;;;;;;;;;;;
;; Setup Extensions ;;
;;;;;;;;;;;;;;;;;;;;;;

(require 'my-packages)

;; Always on
(require 'cosmetics)
(require 'settings-evil)
(require 'settings-ido)
(require 'settings-yasnippet)
(require 'settings-flycheck)


;; These need to reference above
(require 'my-functions)
(require 'my-key-bindings)

;; On as soon as we need them
(with-eval-after-load 'shell (require 'settings-shell))
(with-eval-after-load 'magit (require 'settings-magit))
(with-eval-after-load 'info (require 'settings-info))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Modes associated with certain file types: ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'settings-elisp)
(require 'settings-prog-mode)

(with-eval-after-load 'text (require 'settings-text))
(with-eval-after-load 'python (require 'settings-python))
(with-eval-after-load 'org (require 'settings-org))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setting useful parameters ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Macify!
(if is-mac
  (require 'mac))

;; Used dired-x
(require 'dired-x)
;; Put all backups into one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq vc-make-backup-files t)

;; Save point between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/.places")

;; immortalize scratch buffer, so it'll always be there to keep me company
(require 'unkillable-scratch)
(unkillable-scratch)
(setq unkillable-scratch-behavior 'bury)

;; Use UTF-8
(prefer-coding-system 'utf-8)

;; When text is selected, delete that text with DEL,
;;   or replace it by inserting new text
(delete-selection-mode t)

;; No tabs
(setq-default indent-tabs-mode nil)

;; I might need this someday, who knows?
;;    It makes ediff compare files side by side all the time
(setq ediff-split-window-function 'split-window-horizontally)

;; Allow myself to erase the buffer
(put 'erase-buffer 'disabled nil)

;; Search everything with C-h a
(setq apropos-do-all t)

(setq load-prefer-newer t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Put Customize code elsewhere ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
