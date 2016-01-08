;;; settings-python --- Setting up for python 

;; Choose which interpretor to use
(setq python-shell-interpreter "/opt/local/bin/python")
;; Jedi for python
'jedi:setup
(setq jedi:complete-on-dot t)

(provide 'settings-python)
;;; Settings-python ends here
