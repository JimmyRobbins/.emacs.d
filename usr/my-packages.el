;; automatically install uninstalled packages

(require 'package)

(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(defvar my-packages
  '(auto-complete
    color-theme
    column-enforce-mode
    company
    diminish
    elisp-slime-nav
    elpy
    evil
    evil-matchit
    evil-numbers
    evil-paredit
    evil-surround
    exec-path-from-shell
    expand-region
    fill-column-indicator
    find-file-in-project
    flycheck
    flx-ido
    ido-ubiquitous
    ido-vertical-mode
    jedi
    linum-relative
    magit
    multiple-cursors
    projectile
    rainbow-delimiters
    rainbow-mode
    sclang-extensions
    smart-mode-line
    smex
    solarized-theme
    undo-tree
    unicode-fonts
    unkillable-scratch
    xkcd
    yasnippet)
  "My top level packages, ensure these are all installed upon launch")

(defun all-packages-installed-p ()
  (not (member nil (mapcar 'package-installed-p my-packages))))


(defun install-all-missing-packages ()
  (package-refresh-contents)
  (mapc (lambda (package)
          (unless (package-installed-p package)
            (progn
              (print (format "installing %s" package))
              (package-install package))))
        my-packages))

(unless (all-packages-installed-p) (install-all-missing-packages))

;;;;;;;;;;;;;;;
;; Prompting ;;
;;;;;;;;;;;;;;;

;;; Prompt me to update this file whenever I install or delete a package
(defun prompt-to-record-after-installing (package-name)
  (if (not (member package-name my-packages))
      ;; prompt to add the package to my-packages file
      (if (y-or-n-p (format "%s not in my-packages.el, add it ? " package-name))
          (progn
            (find-file "~/.emacs.d/usr/my-packages.el")
            (goto-char (point-min))
            (search-forward "my-packages")))))

(advice-add 'package-install :after #'prompt-to-record-after-installing)

(defun prompt-to-record-after-deleting (pkg-desc)
  (let ((package-name (package-desc-name pkg-desc)))
    (if (member package-name my-packages)
        ;; prompt to remove the package from my-packages file
        (if (y-or-n-p
             (format "%s is in my-packages.el, remove it ?" package-name))
            (progn
              (find-file "~/.emacs.d/usr/my-packages.el")
              (goto-char (point-min))
              (search-forward "my-packages"))))))

(advice-add 'package-delete :after #'prompt-to-record-after-deleting)

;;; Don't prompt me to edit if I'm just upgrading
(defun silence-package-prompting (&rest args)
  (advice-remove 'package-install 'prompt-to-record-after-installing)
  (advice-remove 'package-delete 'prompt-to-record-after-deleting))
(advice-add 'package-menu-mark-upgrades :after 'silence-package-prompting)

(defun resume-package-prompting (&rest args)
  (advice-add 'package-install :after 'prompt-to-record-after-installing)
  (advice-add 'package-delete :after 'prompt-to-record-after-deleting))
(advice-add 'package-menu-execute :before 'resume-package-prompting)


(provide 'my-packages)
