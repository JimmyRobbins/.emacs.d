;;; settings-python --- Setting up for python 

;; Jedi for python

(print "running settings-python")
(sleep-for 1)

'jedi:setup
(setq jedi:complete-on-dot t)

;; Syntax checking with fly-make
(flycheck-mode 1)
	
(provide 'settings-python)
;;; Settings-python ends here
