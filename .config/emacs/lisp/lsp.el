(use-package flycheck
  :straight (:build t)
  :after flycheck-rust
  :defer t
  :hook (flycheck-mode sideline-mode)
  :init
  (global-flycheck-mode) :config
  (setq flycheck-emacs-lisp-load-path 'inherit)
  ;; Rerunning checks on every newline is a mote excessive.
  (delq 'new-line flycheck-check-syntax-automatically) ;; And don’t recheck on idle as often (setq flycheck-idle-change-delay 2.0)

  ;; For the above functionality, check syntax in a buffer that you
  ;; switched to on briefly. This allows “refreshing” the syntax check
  ;; state for several buffers quickly after e.g. changing a config
  ;; file.
  (setq flycheck-buffer-switch-check-intermediate-buffers t)

  ;; Display errors a little quicker (default is 0.9s)
  (setq flycheck-display-errors-delay 0.2)
  (with-eval-after-load 'rust-ts-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))

(use-package flycheck-rust
  :straight (:build t)
  :defer t)

;; (use-package eldoc-box
;;   :straight (:build t :type git :host github :repo "casouri/eldoc-box")
;;   :defer t
;;   :after eglot
;;   :init (require 'eldoc-box)
;;   :hook ('eglot-managed-mode-hook #'eldoc-box-hover-mode))

(defun corfu-lsp-setup ()
  (setq-local completion-styles '(orderless)
	      completion-category-defaults nil))


(use-package lsp-mode
  :defer t
  :straight (:build t)
  :after lsp-java
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l"
    lsp-completion-provider :none
    read-process-output-max (* 3 1024 1024))
  (require 'lsp-java)
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
	(c-ts-mode        . lsp-deferred)
	(c++-ts-mode      . lsp-deferred)
	(c++-mode         . lsp-deferred)
	(sh-ts-mode       . lsp-deferred)
	(bash-ts-mode     . lsp-deferred)
	(go-ts-mode       . lsp-deferred)
	(rust-ts-mode     . lsp-deferred)
	(java-ts-mode     . lsp-deferred)
	(java-mode        . lsp-deferred)
	(html-ts-mode     . lsp-deferred)
	(css-ts-mode      . lsp-deferred)
	(json-ts-mode     . lsp-deferred)
	(python-ts-mode   . lsp-deferred)

	 ;; if you want which-key integration
	(lsp-mode         . lsp-enable-which-key-integration)

	(lsp-mode         . lsp-ui-mode)
	(lsp-mode         . #'corfu-lsp-setup))
  :config
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  :commands lsp lsp-deferred)

(use-package lsp-java
  :straight (:build t)
  :init
  (setq lsp-enable-dap-auto-config nil))

;; optionally
(use-package lsp-ui
  :straight (:build t)
  :config
  (setq lsp-ui-doc-show-with-cursor t))

;; optionally if you want to use debugger
(use-package dap-mode
  :functions dap-hydra/nil
  :config
  (require 'dap-java))

(provide 'lsp)
