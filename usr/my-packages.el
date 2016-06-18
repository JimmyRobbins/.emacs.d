;; automatically install uninstalled packages

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

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
    w3m
    xkcd
    yasnippet)
  "My top level packages, ensure these are all installed upon launch")

(defun all-packages-installed-p ()
  (not (member nil (mapcar 'package-installed-p my-packages))))


(defun install-all-missing-packages ()
  (mapc (lambda (package)
          (unless (package-installed-p package)
            (progn
              (print (format "installing %s" package))
              (package-install package))))
        my-packages))

(unless (all-packages-installed-p) (install-all-missing-packages))

;; remind me to add packages to my list when I install them
(defadvice package-install (after propmt-to-edit-my-settings)
  (if (y-or-n-p "Edit .../my-packages.el ? ")
      (progn
        (find-file "~/.emacs.d/usr/my-packages.el")
        (beginning-of-buffer)
        (search-forward "my-packages"))))

(provide 'my-packages)
