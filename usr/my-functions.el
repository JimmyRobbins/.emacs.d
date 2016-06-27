;; Basic Functions defined and/or stolen by me

;;;;;;;;;;;;;;;;;;;;
;; Bell Functions ;;
;;;;;;;;;;;;;;;;;;;;

;; A Visual bell that actually works
(defun my-bell-invert-colors ()
  (interactive)
  (invert-face 'default)
  (sleep-for 0.05)
  (invert-face 'default))

 ;; A Second Option
(defun my-bell-flash-orange ()
  "A Visual bell function, flashes the screen momentarily"
  (interactive)
  (let ((original-bg-color (face-attribute 'default :background)))
    (progn
      (set-face-background 'default "#cb4b16")
      (sleep-for 0.05)
      (set-face-background 'default original-bg-color))))

(setq visible-bell 1)
(setq ring-bell-function 'my-bell-flash-orange)

;;;;;;;;;;;;;;;
;; Utilities ;;
;;;;;;;;;;;;;;;

(defun my-shell-clear ()
  "Clear the shell screen and fix the prompt if it's been \"stringified\""
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))

(defun my-buffer-write-kill ()
  "Save the buffer and then kill, written as a replacement for :wq in evil"
  (interactive)
  (save-buffer)
  (kill-this-buffer))

(defun my-buffer-write-close ()
  "Save the buffer, kill and close window. A stronger replacement for :wq,
but still doesn't quit emacs if it's on the last window"
  (interactive)
  (save-buffer)
  (kill-buffer-and-window))

(defun my-kill-other-buffer ()
  "Kill the other buffer"
  (interactive)
  (other-window 1)
  (kill-this-buffer)
  (other-window -1))

(defun my-kill-all-other-buffers ()
  (interactive)
  (let ((other-buffers (delq (current-buffer) (buffer-list))))
    (mapc 'kill-buffer other-buffers)))

(defun my-kill-all-dired-buffers ()
  (interactive)
  (mapc (lambda (buffer)
          (when (eq (buffer-local-value 'major-mode buffer)
                    'dired-mode)
            (kill-buffer buffer)))
        (buffer-list)))

(defun my-switch-to-scratch ()
  "Switch to the scratch buffer"
  (interactive)
  (switch-to-buffer "*scratch*"))

(defun my-visit-file-at-point-in-dired ()
  "Go to the file at point in Dired"
  (interactive)
  (evil-find-file-at-point-with-line)
  (let ((target-directory (file-name-directory (buffer-file-name))))
    (kill-buffer)
    (find-file target-directory)))

(defun current-window-split-vertical-p ()
  "Tests whether the current window is split vertically"
  (if (or (window-in-direction 'right)
          (window-in-direction 'left))
      t
    nil))

(defun my-find-file-vertical-split ()
  "Find a file, then open it in a vertically slit window,
opening a new one if necessary"
  (interactive)
  (if (not (current-window-split-vertical-p))
      (evil-window-vsplit))
  (if (window-in-direction 'right)
      (evil-window-right 1)
    (evil-window-left 1))
  (ido-find-file))

(defun my-find-buffer-vertical-split ()
  "Find a file, then open it in a vertically slit window,
opening a new one if necessary"
  (interactive)
  (if (not (current-window-split-vertical-p))
      (evil-window-vsplit))
  (if (window-in-direction 'right)
      (evil-window-right 1)
    (evil-window-left 1))
  (ido-switch-buffer))

;;;;;;;;;;;;;;;;
;; For Coding ;;
;;;;;;;;;;;;;;;;

(defun my-evil-eval-and-print ()
  "move to the end of the innermost sexp, evaluate it,
and print the result to the buffer"
  (interactive)
  (evil-find-char-backward 1 ?\()
  (evilmi-jump-items)
  (end-of-line)
  (evil-insert-state)
  (eval-print-last-sexp)
  (evil-normal-state))



(provide 'my-functions)
