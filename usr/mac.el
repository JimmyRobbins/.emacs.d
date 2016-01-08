;; Make using on a mac more enjoyable

;; Use Command key as control (in addition to regular contorl for now)
(setq mac-command-modifier 'control)
(setq ns-function-modifier 'hyper)

;; Use mac OSX trash
(setq delete-by-moving-to-trash t)

;; Don't open files from the workspace in a new frame
(setq ns-pop-up-frames nil)

;; Ignore .DS_Store files with ido mode
(add-to-list 'ido-ignore-files "\\.DS_Store")

(provide 'mac)
