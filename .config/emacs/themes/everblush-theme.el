;;; everblush-theme.el --- Everblush Theme for Emacs -*- lexical-binding: t; -*-
;; LOL THIS WAS MADE USING CHATGPT

(deftheme everblush "A dark theme with soft but vibrant colors.")

(let ((class '((class color) (min-colors 89)))
      ;; Everblush Colors
      (bg "#141b1e")
      (fg "#dadada")
      (red "#e57474")
      (orange "#f0a988")
      (yellow "#e5c76b")
      (green "#8ccf7e")
      (cyan "#67b0a4")
      (blue "#67b0e8")
      (magenta "#c47fd5")
      (comment "#6b717d")
      (cursor "#dadada")
      (border "#1e2528")
      (highlight "#1f2a2e")
      (region "#2e3c43")
      (error "#e57474")
      (warning "#e5c76b")
      (success "#8ccf7e"))

  (custom-theme-set-faces
   'everblush
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(cursor ((,class (:background ,cursor))))
   `(fringe ((,class (:background ,bg))))
   `(region ((,class (:background ,region))))
   `(highlight ((,class (:background ,highlight))))
   `(minibuffer-prompt ((,class (:foreground ,blue :bold t))))
   `(mode-line ((,class (:background ,border :foreground ,fg))))
   `(mode-line-inactive ((,class (:background ,bg :foreground ,comment))))
   `(error ((,class (:foreground ,error :bold t))))
   `(warning ((,class (:foreground ,warning :bold t))))
   `(success ((,class (:foreground ,success :bold t))))
   `(font-lock-builtin-face ((,class (:foreground ,blue))))
   `(font-lock-comment-face ((,class (:foreground ,comment :italic t))))
   `(font-lock-constant-face ((,class (:foreground ,cyan))))
   `(font-lock-function-name-face ((,class (:foreground ,yellow))))
   `(font-lock-keyword-face ((,class (:foreground ,magenta :bold t))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-type-face ((,class (:foreground ,orange))))
   `(font-lock-variable-name-face ((,class (:foreground ,red))))
   `(font-lock-warning-face ((,class (:foreground ,warning :bold t))))

   ;; Org Mode
   `(org-level-1 ((,class (:foreground ,blue :bold t))))
   `(org-level-2 ((,class (:foreground ,magenta))))
   `(org-level-3 ((,class (:foreground ,yellow))))
   `(org-level-4 ((,class (:foreground ,cyan))))
   `(org-todo ((,class (:foreground ,red :bold t))))
   `(org-done ((,class (:foreground ,green :bold t))))

   ;; Magit
   `(magit-section-heading ((,class (:foreground ,yellow :bold t))))
   `(magit-branch-local ((,class (:foreground ,blue))))
   `(magit-branch-remote ((,class (:foreground ,green))))
   `(magit-diff-added ((,class (:foreground ,green :background "#1e292b"))))
   `(magit-diff-removed ((,class (:foreground ,red :background "#2b1e1e")))))
  )

;;;###autoload
(defun everblush-theme ()
  "Load the Everblush theme."
  (interactive)
  (load-theme 'everblush t))

(provide-theme 'everblush)

;;; everblush-theme.el ends here
