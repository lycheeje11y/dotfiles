(use-package dirvish
  :straight (:build t)
  :defer t
  :init (dirvish-override-dired-mode)
  :custom
  (require 'dired)
  (dirvish-quick-access-entries
   '(("h" "~/" "Home")
     ("a" "~/Code" "Code")
     ("d" "~/Downloads/" "Downloads")
     ("c" "~/.config/emacs" "Emacs Config")
  (dirvish-mode-line-format
   '(:left (sort file-time "" file-size symlink) :right (omit yank index)))
  (dirvish-attributes '(all-the-icons file-size collapse subtree-state vc-state git-msg))
  :config
  (dirvish-peek-mode)
  (setq dired-dwim-target         t
	dired-recursive-copies    'always
	dired-recursive-deletes   'top
	delete-by-moving-to-trash t
	dirvish-preview-dispatchers (cl-substitute 'pdf-preface 'pdf dirvish-preview-dispatchers)))))

(provide 'dirvish)
