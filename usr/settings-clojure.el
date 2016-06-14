;; Settings for editing Clojure files and using the REPL

(require 'clojure-mode)
(require 'clojure-mode-extra-font-locking)
(require 'cider)

(defun my-clojure-mode-hook ()
  ;; (enable-paredit-mode)
  )

;; CIDER
(defun my-cider-mode-hook ()
  )

(setq cider-repl-pop-to-buffer-on-connect t)


(add-hook 'clojure-mode-hook 'my-clojure-mode-hook)
(add-hook 'cider-mode-hook 'my-cider-mode-hook)

(provide 'settings-clojure)
