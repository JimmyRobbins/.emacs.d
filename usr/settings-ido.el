;; Settings for ido mode


(ido-mode 1)
(setq ido-enable-flex-matching t)
(ido-vertical-mode 1)

;; (require 'flx-ido)
;; (flx-ido-mode 1)
;; (setq ido-use-faces nil)

(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

(add-to-list 'ido-ignore-files "\\.pyc")
(add-to-list 'ido-ignore-files "\\.elc")

(provide 'settings-ido)
