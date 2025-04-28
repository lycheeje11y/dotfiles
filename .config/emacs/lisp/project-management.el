(require 'project)

;; (use-package workgroups2
;;   :straight (:build t)
;;   :init
;;   (setq wg-prefix-key "M-w")
;;   (setq wg-session-file "~/.config/emacs/.workgroups")
;;   (require 'workgroups2))

;; (use-package easysession
;;   :defer t
;;   :straight (:build t)
;;   :commands (easysession-switch-to
;;      easysession-save-as
;;      easysession-save-mode
;;      easysession-load-including-geometry)
;;   :hook (emacs-startup-hook . easysession-load-including-geometry)
;;         (emacs-startup-hook . easysession-save-mode)
;;   :custom
;;   ;;(easysession-mode-line-misc-info t)
;;   (setq easysession-save-interval (* 10 60)))

;; (use-package eyebrowse
;;   :defer t
;;   :straight (:build t)
;;   :init
;;   (setq eyebrowse-keymap-prefix (kbd "M-w"))
;;   (eyebrowse-mode 1)
;;   (define-key eyebrowse-mode-map (kbd "M-w c") 'eyebrowse-create-window-config)
;;   (define-key eyebrowse-mode-map (kbd "M-w n") 'eyebrowse-next-window-config)
;;   (define-key eyebrowse-mode-map (kbd "M-w p") 'eyebrowse-prev-window-config)
;;   (define-key eyebrowse-mode-map (kbd "M-w r") 'eyebrowse-rename-window-config)
;;   )

(defun compile-interactive ()
  (interactive)
  (setq current-prefix-arg '(4))
  (call-interactively 'project-compile))

(defun recompile-interactive ()
  (interactive)
  (setq current-prefix-arg '(4))
  (call-interactively 'project-recompile))

(define-key project-prefix-map (kbd "c") 'compile-interactive)
(define-key project-prefix-map (kbd "M-c") 'recompile-interactive)

(with-eval-after-load 'project
  (add-to-list 'project-switch-commands '(magit-project-status "Magit" "m"))
  (add-to-list 'project-switch-commands '(project-dired "Dired" "d")))

(use-package persp-mode
  :straight (:build t)
  :init
  (setq persp-keymap-prefix (kbd "M-w"))
  (require 'persp-mode)
  (persp-mode))

;; (use-package workgroups
;;   :straight (:build t)
;;   :init
;;   (setq wg-prefix-key (kbd "M-w"))
;;   (setq wg-session-file "~/.config/emacs/workgroups-conf")
;;   (require 'workgroups)
;;   (wg-load "~/.config/emacs/workgroups_conf")
;;   (workgroups-mode 1))

(provide 'project-management)
