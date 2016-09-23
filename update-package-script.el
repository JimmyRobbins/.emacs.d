;;; Script to update emacs packages, meant to be run from
;;; the command line with emacs -batch

(add-to-list 'load-path "~/.emacs.d/elpa")

(require 'package)

(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))


(require 'package-utils)
(package-utils-upgrade-all)
