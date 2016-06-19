;; automatically install uninstalled packages

(require 'package)

(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(defvar my-packages
  '(auto-complete
    cider
    clojure-mode
    clojure-mode-extra-font-locking
    color-theme
    column-enforce-mode
    company
    diminish
    elisp-slime-nav
    elpy
    evil
    evil-matchit
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
    magit
    multiple-cursors
    rainbow-delimiters
    rainbow-mode
    sclang-extensions
    smart-mode-line
    smex
    solarized-theme
    undo-tree
    unicode-fonts
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


(provide 'my-packages)
