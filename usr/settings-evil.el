;; Settings for evil mode

(require 'evil)
(evil-mode 1)

(setq evil-cross-lines t)
(setq evil-want-fine-undo nil)

(require 'evil-surround)
(global-evil-surround-mode 1)

(require 'evil-matchit)
(global-evil-matchit-mode 1)

(add-hook 'paredit-mode-hook 'evil-paredit-mode)


;; Occasionally default to emacs state
(evil-set-initial-state 'help-mode 'emacs)
(evil-set-initial-state 'xkcd-mode 'emacs)
(evil-set-initial-state 'info-mode 'emacs)

;;;;;;;;;;;;;;;;;;
;; Key-bindings ;;
;;;;;;;;;;;;;;;;;;

;; Unset keys that I don't use and that get in the way
(define-key evil-normal-state-map (kbd "M-.") nil)


(define-key evil-normal-state-map "j" 'evil-next-visual-line)
(define-key evil-normal-state-map "k" 'evil-previous-visual-line)

(define-key evil-normal-state-map "gb" 'ido-switch-buffer)
(define-key evil-normal-state-map "gf" 'ido-find-file)
(define-key evil-normal-state-map "gr" 'recentf-open-files)
(define-key evil-normal-state-map "gF" 'evil-find-file-at-point-with-line)
(define-key evil-normal-state-map "gD" 'dired-jump)
(define-key evil-normal-state-map "gs" 'shell)

(define-key evil-normal-state-map "zA" 'evil-open-folds)
(define-key evil-normal-state-map "zC" 'evil-close-folds)
(define-key evil-normal-state-map "z+" 'ispell-buffer) ; Shift-=

(evil-ex-define-cmd "r[ecent]" 'recentf-open-files)
(evil-ex-define-cmd "o[pen]" 'ido-find-file)
(evil-ex-define-cmd "dired" 'my-visit-file-at-point-in-dired)

(evil-ex-define-cmd "wk" 'my-buffer-write-kill)
(evil-ex-define-cmd "wc" 'my-buffer-write-close)
(evil-ex-define-cmd "k" 'kill-this-buffer)
(evil-ex-define-cmd "kill" 'ido-kill-buffer)
(evil-ex-define-cmd "killall" 'my-kill-all-other-buffers)
(evil-ex-define-cmd "ko" 'my-kill-other-buffer)

(evil-ex-define-cmd "vso" 'my-find-file-vertical-split)
(evil-ex-define-cmd "vsb" 'my-find-buffer-vertical-split)

(evil-ex-define-cmd "wide" 'my-set-buffer-width-to-80)

(evil-ex-define-cmd "Q" 'save-buffers-kill-terminal)
(evil-ex-define-cmd "save" 'save-some-buffers)
(evil-ex-define-cmd "W" 'save-some-buffers)

(evil-ex-define-cmd "eval" 'my-evil-eval-and-print)
(evil-ex-define-cmd "scr[atch]" 'my-switch-to-scratch)

(evil-ex-define-cmd "g[it]" 'magit-status)
(evil-ex-define-cmd "words" 'count-words)


(provide 'settings-evil)
