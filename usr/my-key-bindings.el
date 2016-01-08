;; My custom global keybindings
;; 
;; Mode specifi keybindings are located in that modes
;;   settings-<mode-name> file

;; expand-region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; Moving around windows with C-arrows
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

(provide 'my-key-bindings)
