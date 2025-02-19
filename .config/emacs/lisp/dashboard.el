;; use-package with package.el:
(use-package dashboard
  :straight (:build t)
  :config
  ;; Set the title
  (setq dashboard-banner-logo-title "stop complaining bro")
  ;; Set the banner
  (setq dashboard-startup-banner "~/.config/emacs/banner.txt")
  ;; Value can be:
  ;;  - 'official which displays the official emacs logo.
  ;;  - 'logo which displays an alternative emacs logo.
  ;;  - an integer which displays one of the text banners
  ;;    (see dashboard-banners-directory files).
  ;;  - a string that specifies a path for a custom banner
  ;;    currently supported types are gif/image/text/xbm.
  ;;  - a cons of 2 strings which specifies the path of an image to use
  ;;    and other path of a text file to use if image isn't supported.
  ;;    (cons "path/to/image/file/image.png" "path/to/text/file/text.txt").
  ;;  - a list that can display an random banner,
  ;;    supported values are: string (filepath), 'official, 'logo and integers.

  ;; Content is not centered by default. To center, set
  (setq dashboard-center-content t)
  ;; vertically center content
  ;;(setq dashboard-vertically-center-content t)

  (setq dashboard-projects-backend 'projectile)

  (setq dashboard-items '((recents   . 5)
                          (projects  . 5)
                          (bookmarks . 5)
                          (agenda    . 5)))

  ;; To disable shortcut "jump" indicators for each section, set
  ;;(setq dashboard-show-shortcuts nil)
  (dashboard-setup-startup-hook))
