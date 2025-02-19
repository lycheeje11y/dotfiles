(electric-pair-mode 1)

(setq scroll-conservatively 1000)
(setq epg-pinentry-mode 'loopback)
(setq backup-directory-alist `(("." . ,(expand-file-name ".tmp/backups/" user-emacs-directory))))
(setq backup-by-copying t)

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb

(setq-default custom-file (expand-file-name ".custom.el" user-emacs-directory))
(when (file-exists-p custom-file) ; Don’t forget to load it, we still need it
  (load custom-file))

(setq delete-by-moving-to-trash t)

(setq-default initial-scratch-message nil)

(setopt use-short-answers t)

(setq user-full-name       "Joseph Wu"
      user-real-login-name "Joseph Wu"
      user-login-name      "lycheejelly"
      user-mail-address    "roccowu949@gmail.com")

(provide 'options)
