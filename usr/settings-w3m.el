;; configuration file for using w3m

(setq browse-url-browser-function 'w3m-goto-url-new-session)

(setq w3m-use-cookies t)

;; Keymaps
(eval-after-load 'w3m
  '(progn
     (define-key w3m-mode-map "q" 'w3m-previous-buffer)
     (define-key w3m-mode-map "w" 'w3m-next-buffer)
     (define-key w3m-mode-map "x" 'w3m-close-window)
     (define-key w3m-mode-map "g" 'w3m-open-site)
     ))

;; Pretend to be a mobile device
(setq w3m-user-agent "Mozilla/5.0 (Linux; U; Android 2.3.3; zh-tw; HTC_Pyramid Build/GRI40) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.")

;rR
(defun reddit (reddit)
  "Opens REDDIT in a w3m-new-session"
  (interactive (list
		(read-string "Enter the reddit (default: emacs): " nil nil "emacs" nil)))
  (browse-url (format "http://www.reddit.com/r/%s" reddit))
  )

(defun wikipedia (search-term)
  "Search for SEARCH-TERM on wikipeda"
  (interactive
   (let ((term (if mark-active
		   (buffer-substring (region-bion-end))
		 (word-at-point))))
     (list
      (read-string
       (format "Wikipedia (%s):" term) nil nil term)))
   )
  (browse-url
   (concat
    "http://en.m.wikipedia.org/w/index.php?search="
    search-term
    ))
  )

(defun w3m-open-site (site)
  "Opens site in w3m with http:// prepended"
  (interactive
   (list (read-string "Enter website address(default: w3m-home):" nil nil w3m-home-page nil )))
  (w3m-goto-url-new-session
   (concat "http://" site )))
