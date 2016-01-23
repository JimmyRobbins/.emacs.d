;; My settings for editing python files

(elpy-enable)

(add-hook 'python-mode-hook
          ;; (hs-minor-mode t)
          (set-fill-column 80)
          (fci-mode))
