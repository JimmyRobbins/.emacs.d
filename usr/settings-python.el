;;; settings-python --- Setting up for python

;; Choose which interpretor to use
(setq python-shell-interpreter "/opt/local/bin/python")

;; Enable code folding
(hs-minor-mode 1)

;; Setup virtual environment support
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(setq venv-location "~/.virtualenvs/")

;; Jedi for python
(require 'jedi)
(jedi:setup)
(setq jedi:complete-on-dot t)

;; Show Fill Column at 80
(require 'fill-column-indicator)
(fci-mode 1)
(set-fill-column 80)

(provide 'settings-python)
