(add-to-list 'custom-theme-load-path "~/.config/emacs/themes/")
(load-theme 'everblush)

(setq package-archives '(("melpa"  . "https://melpa.org/packages/")
       ("gnu"    . "https://elpa.gnu.org/packages/")
       ("nongnu" . "https://elpa.nongnu.org/nongnu/")))

(defvar bootstrap-version)
(defvar comp-deferred-compilation-deny-list ()) ; workaround, otherwise straight shits itself
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
  (url-retrieve-synchronously
   "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
   'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(setq straight-vc-git-default-remote-name "straight")
(setq use-package-always-ensure t)

(setq straight-built-in-pseudo-packages '(emacs nadvice python image-mode project flymake))
(setq straight-use-package-by-default t)

;; (use-package jellybeans-plus-theme
;;   :straight (jellybeans-plus-theme :type git
;;        :host github
;;       :repo "jsmestad/jellybeans-plus-theme"))

(use-package sensible-defaults
  :defer t
  :straight (:build t :type git :host github :repo "hrs/sensible-defaults.el")
  :init
  (require 'sensible-defaults)
  (sensible-defaults/increase-gc-threshold)
  (sensible-defaults/delete-trailing-whitespace)
  (sensible-defaults/make-scripts-executable)
  (sensible-defaults/offer-to-create-parent-directories-on-save)
  (sensible-defaults/ensure-that-files-end-with-newline)
  (sensible-defaults/make-dired-file-sizes-human-readable)
  (sensible-defaults/shorten-yes-or-no)
  (sensible-defaults/always-highlight-code)
  (sensible-defaults/refresh-buffers-when-files-change))

(use-package ligature
  :straight (ligature :type git
      :host github
      :repo "mickeynp/ligature.el"
      :build t)
  :config
  (ligature-set-ligatures 't
    '("www"))
  ;; enable traditional ligature support in eww-mode, if the
  ;; `variable-pitch' face supports it
  (ligature-set-ligatures '(eww-mode org-mode elfeed-show-mode)
    '("ff" "fi" "ffi"))
  ;; enable all cascadia code ligatures in programming modes
  (ligature-set-ligatures 'prog-mode
    '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
      ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
      "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
      "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
      "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
      "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
      "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
      "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
      ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
      "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
      "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
      "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
      "\\\\" "://"))
  (global-ligature-mode t))


(use-package elcord
  :straight (:built t)
  :defer t
  :config
  (setopt elcord-use-major-mode-as-main-icon t
    elcord-refresh-rate                5
    elcord-boring-buffers-regexp-list  `("^ "
     ,(rx "*" (+ any) "*")
     ,(rx bol (or "Re: "
      "Fwd: ")))))

(use-package which-key
  :straight (:build t)
  :defer t
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))

(use-package evil
  :straight (:build t)
  :init
  (setq evil-want-integration t
  evil-want-keybinding nil
  evil-want-C-u-scroll t
  evil-want-C-i-jump nil)
  (require 'evil-vars)
  :config
  (evil-mode 1)
  (setq evil-want-fine-undo t) ; more granular undo with evil
  (evil-set-initial-state 'messages-buffer-mode 'normal)
  (evil-set-initial-state 'dashboard-mode 'emacs)
  (evil-set-initial-state 'vterm-mode 'emacs))

(use-package evil-collection
  :defer t
  :straight (:build t)
  :init
  (evil-collection-init '(dired calendar magit)))

(use-package evil-nerd-commenter
  :straight (:build t)
  :config
  (evilnc-default-hotkeys))


(use-package key-chord
  :straight (:build t)
  :init
  (require 'key-chord)
  :config
  (key-chord-mode 1)
  (key-chord-define-global "jk" 'evil-normal-state)
  (key-chord-define-global "kj" 'evil-normal-state)
  )

(use-package nerd-icons
  :straight (:build t)
  :after corfu
  :defer t)

(use-package magit
  :straight (:build t)
  :defer t
  :init
  (setq forge-add-default-bindings nil)
  :config
  (add-hook 'magit-process-find-password-functions 'magit-process-password-auth-source)
  (setopt magit-clone-default-directory "~/fromGIT/"
    magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

(use-package ripgrep
  :if (executable-find "rg")
  :straight (:build t)
  :defer t)

(use-package ivy
  :straight (:build t))

(use-package vterm
  :defer t
  :straight (:build t)
  :bind (("C-c t" . vterm))
  :config
  (setq vterm-shell "/usr/bin/zsh"
  vterm-always-compile-module t))

(use-package eshell-vterm
  :after eshell
  :straight (:build t)
  :config
  (eshell-vterm-mode)
  (defalias 'eshell/v 'eshell-exec-visual))

(use-package quickrun
  :straight (:build t)
  :defer t
  :bind ("C-C r" . quickrun))

(use-package crux
  :straight (:build t)
  :defer t
  :bind
  (("C-c o"     . crux-open-with)
   ("C-c w"     . crux-cleanup-buffer-or-region)
   ("C-x 4 t"   . crux-transpose-windows)
   ("C-c D"     . crux-delete-file-and-buffer)
   ("C-c r"     . crux-rename-file-and-buffer)
   ("C-c I"     . crux-find-user-init-file)
   ("M-o"       . crux-other-window-or-switch-buffer)))

(use-package git-gutter
  :straight (:build t)
  :defer t
  :init
  (global-git-gutter-mode +1))

(use-package dimmer
  :straight (:build t)
  :defer t
  :init
  (require 'dimmer)
  (dimmer-configure-which-key)
  (dimmer-configure-helm)
  (dimmer-mode t))

(use-package windmove
  :config
  (windmove-default-keybindings 'meta)  ;; Use Ctrl as the modifier
  (global-set-key (kbd "M-h") 'windmove-left)
  (global-set-key (kbd "M-l") 'windmove-right)
  (global-set-key (kbd "M-k") 'windmove-up)
  (global-set-key (kbd "M-j") 'windmove-down))

(use-package editorconfig
  :defer t
  :straight (:build t)
  :init
  (editorconfig-mode 1))

(use-package minions
  :straight (:build t)
  :init (minions-mode 1))

(use-package ansi-color
  :defer t
  :straight (:type built-in)
  :hook (compilation-filter . ansi-color-compilation-filter))

(use-package nerd-icons-dired
  :hook (dired-mode . nerd-icons-dired-mode))

(use-package dired-subtree
  :defer t
  :after dired
  :straight (:build t)
  :bind ("<tab>" . #'dired-subtree-toggle))

(use-package dired-sidebar
  :straight (:build t)
  :custom
  (setq dired-sidebar-theme 'nerd-icons)
  :commands (dired-sidebar-toggle-sidebar)
  :bind (("M-e" . dired-sidebar-toggle-sidebar)))

(use-package doom-modeline
  :defer t
  :straight (:build t)
  :custom
  (setq doom-modeline-height 35)
  (setq doom-modeline-workspace-name t)
  :hook (after-init . doom-modeline-mode))

;; (use-package all-the-icons
;;   :straight (:build t)
;;   :if (display-graphic-p))

(use-package jinx
  :defer t
  :straight (:build t)
  :hook (emacs-startup . global-jinx-mode)
  :bind ("M-$" . jinx-correct))

(provide 'packages)
