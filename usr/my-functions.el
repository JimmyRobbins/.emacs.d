;; Basic Functions defined and/or stolen by me

;; A Visual bell that actually works
;; (setq ring-bell-function '(lambda()
;; 			    (invert-face 'default)
;; 			    (sleep-for 0.01)
;; 			    (invert-face 'default)))

;; ;; A Second Option
(setq ring-bell-function '(lambda ()
			    (setq original-bg-color (face-attribute 'default :background))
			    (set-face-background 'default "#b58900")
			    (sleep-for 0.01)
			    (set-face-background 'default original-bg-color)))


(provide 'my-functions)
