;;; Compiled snippets and support files for `prog-mode'
;;; contents of the .yas-setup.el support file:
;;;
(defun yas-with-comment (str)
  (format "%s%s%s" comment-start str comment-end))
;;; Snippet definitions:
;;;
(yas-define-snippets 'prog-mode
                     '(("x" "`(yas-with-comment \"XXX: \")`" "xxx" nil nil nil "/Volumes/Dmitri/Users/JimmyRobbins/.emacs.d/elpa/yasnippet-20160104.129/snippets/prog-mode/xxx" nil nil)
                       ("t" "`(yas-with-comment \"TODO: \")`" "todo" nil nil nil "/Volumes/Dmitri/Users/JimmyRobbins/.emacs.d/elpa/yasnippet-20160104.129/snippets/prog-mode/todo" nil nil)
                       ("fi" "`(yas-with-comment \"FIXME: \")`" "fixme"
                        (not
                         (eq major-mode 'sh-mode))
                        nil nil "/Volumes/Dmitri/Users/JimmyRobbins/.emacs.d/elpa/yasnippet-20160104.129/snippets/prog-mode/fixme" nil nil)))


;;; Do not edit! File generated at Tue Jan 12 07:32:01 2016
