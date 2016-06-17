;; Handling packages

(require 'package)

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
    evil-surround
    exec-path-from-shell
    expand-region
    fill-column-indicator
    find-file-in-project
    flycheck
    ido-ubiquitous
    ido-vertical-mode
    jedi
    jedi-direx
    magit
    multiple-cursors
    rainbow-delimiters
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
  (mapc (unless (package-installed-p package)
          (package-install package))
        'my-packages))

(unless (all-packages-installed-p) (install-all-missing-packages))
