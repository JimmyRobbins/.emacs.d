;; Settings for ido mode


(ido-mode 1)
(setq ido-enable-flex-matching t)
(ido-vertical-mode 1)

(add-to-list 'ido-ignore-files "\\.pyc")
(add-to-list 'ido-ignore-files "\\.elc")

(provide 'settings-ido)
