;;; settings-python --- Setting up for python 

;; Choose which interpretor to use
(setq python-shell-interpreter "/opt/local/bin/python")

;; Jedi for python
(require 'jedi)
(jedi:setup)
(setq jedi:complete-on-dot t)

;; Show Fill Column at 80
(require 'fill-column-indicator)
(fci-mode 1)
(set-fill-column 80)
