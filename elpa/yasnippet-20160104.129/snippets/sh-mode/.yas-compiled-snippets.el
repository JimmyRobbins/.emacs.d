;;; Compiled snippets and support files for `sh-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'sh-mode
                     '(("ife" "if ${1:cond}\nthen ${2:stuff}\nelse ${3:other}\nfi\n$0" "ife" nil nil nil "/Volumes/Dmitri/Users/JimmyRobbins/.emacs.d/elpa/yasnippet-20160104.129/snippets/sh-mode/ife" nil nil)
                       ("if" "if ${1:[ -f file]}\n   then ${2:do}\nfi\n$0" "if" nil nil nil "/Volumes/Dmitri/Users/JimmyRobbins/.emacs.d/elpa/yasnippet-20160104.129/snippets/sh-mode/if" nil nil)
                       ("f" "function ${1:name} {\n         $0\n}" "function" nil nil nil "/Volumes/Dmitri/Users/JimmyRobbins/.emacs.d/elpa/yasnippet-20160104.129/snippets/sh-mode/function" nil nil)
                       ("for" "for ${1:var} in ${2:stuff}; do\n    $0\ndone" "for loop" nil nil nil "/Volumes/Dmitri/Users/JimmyRobbins/.emacs.d/elpa/yasnippet-20160104.129/snippets/sh-mode/for loop" nil nil)
                       ("!" "#!/usr/bin/env bash\n$0" "bang" nil nil nil "/Volumes/Dmitri/Users/JimmyRobbins/.emacs.d/elpa/yasnippet-20160104.129/snippets/sh-mode/bang" nil nil)
                       ("args" "if [ $# -lt ${1:2} ]\n   then $0\nfi" "args" nil nil nil "/Volumes/Dmitri/Users/JimmyRobbins/.emacs.d/elpa/yasnippet-20160104.129/snippets/sh-mode/args" nil nil)))


;;; Do not edit! File generated at Tue Jan 12 07:32:01 2016
