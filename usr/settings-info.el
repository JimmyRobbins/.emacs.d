;;; Settings for info mode

;;; Use j and k for up and down, but leave l for "back"

(define-key Info-mode-map (kbd "j") 'next-line)
(define-key Info-mode-map (kbd "k") 'previous-line)

(provide 'settings-info)
