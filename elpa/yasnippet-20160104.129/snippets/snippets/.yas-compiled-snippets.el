;;; Compiled snippets and support files for `snippets'
;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("mod" "module ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n         (or (buffer-file-name)\n             (buffer-name (current-buffer))))))))\n           (cond\n             ((string-match \"_\" fn) (replace-match \"\" nil nil fn))\n              (t fn)))`}\n  $0\nend" "module ... end" nil nil nil "/Volumes/Dmitri/Users/JimmyRobbins/.emacs.d/elpa/yasnippet-20160104.129/snippets/snippets/ruby-mode/definitions/mod" nil nil)))


;;; Do not edit! File generated at Tue Jan 12 07:32:01 2016
