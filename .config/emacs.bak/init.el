(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


(require 'options)
(require 'hooks)

(require 'visuals)

(require 'packages)
(require 'project-management)
(require 'dashboard)

(require 'indentation)
(require 'completion)
(require 'lsp)
(require 'treesitter)
(require 'programming)
