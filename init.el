;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;
;; ;; Jimmy Robbins' Emacs Configuration!! ;; ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(setq is-mac (equal system-type 'darwin))

;;;;;;;;;;;;;;;;;;;;;;;;;
;; Loading Elisp files ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(package-initialize)
(add-to-list 'load-path "~/.emacs.d/usr")
(add-to-list 'load-path "~/.emacs.d/elpa")
(add-to-list 'load-path "~/.emacs.d/SuperCollider")

;;;;;;;;;;;;;;;;;;;;;;
;; Setup Extensions ;;
;;;;;;;;;;;;;;;;;;;;;;


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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Modes associated with certain file types: ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'settings-prog-mode)
(require 'sclang)                       ; enable the mode
(add-hook 'sclang-mode
  (lambda () (load-library "settings-sclang")))

(require 'settings-python)
(require 'settings-elisp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setting useful parameters ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Macify!
(if is-mac
  (require 'mac))

;; See all ELPA packages
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Put all backups into one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq vc-make-backup-files t)

;; Save point between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/.places")

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
