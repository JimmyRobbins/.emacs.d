;; Basic Functions defined and/or stolen by me

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
    (find-file target-directory))
  )


(provide 'my-functions)
