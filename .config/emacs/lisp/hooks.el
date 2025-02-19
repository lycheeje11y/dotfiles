(add-hook 'before-save-hook #'whitespace-cleanup)

(add-hook 'prog-mode-hook #'hs-minor-mode)

(setq display-line-numbers-type 'relative)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

(provide 'hooks)
