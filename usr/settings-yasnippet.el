;; setting up yasnippets

(require 'yasnippet)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"		;My custom Snippets
	"~/.emacs.d/elpa/yasnippet-20160104.129/snippets"
	))

(yas-global-mode 1)

(provide 'settings-yasnippet)
