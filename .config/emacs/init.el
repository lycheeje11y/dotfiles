;; COMMENT THIS OUT IF YOU'RE USING A DIFFERENT CONFIG DIRECTORY
(setq user-emacs-directory (expand-file-name "~/.config/emacs/"))

(defvar jelly/org-files
  '("core.org" "binds.org" "git.org" "code.org" "completion.org" "aesthetics.org" "file-navigation.org")
			"This is a list of all my [config].org files.")

(defvar jelly/org-files-directory (expand-file-name "jelly/" user-emacs-directory)
			"This is the directory in which all my [config].org files are stored.")

(defun jelly/reload ()
	"Reloads emacs configuration"
	(interactive)
(dolist (file jelly/org-files)
  (org-babel-load-file
   (expand-file-name file jelly/org-files-directory))))

;; first call to set everything up
(jelly/reload)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil)
 '(package-vc-selected-packages
   '((punch-line :url "https://github.com/konrad1977/punch-line" :branch "main"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(error ((t (:foreground "#FB4933"))))
 '(warning ((t (:foreground "#77FEE9")))))
