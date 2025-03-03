(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/packages" user-emacs-directory))


(require 'options)
(require 'hooks)

(require 'visuals)

(require 'packages)
(require 'dashboard)
(require 'completion)
(require 'lsp)
(require 'treesitter)
(require 'programming)
(require 'project-management)

(require 'indentation)
