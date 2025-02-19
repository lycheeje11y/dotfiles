(setq package-enable-at-startup nil
      inhibit-startup-message   t
      frame-resize-pixelwise    t  ; fine resize
      package-native-compile    t
      undo-limit                100000000
      auto-save-default         t
      use-dialog-box            nil
      window-combination-resize t
      ) ;
(scroll-bar-mode -1)               ; disable scrollbar
(tool-bar-mode -1)                 ; disable toolbar
(tooltip-mode -1)
(set-fringe-mode 10)               ; give some breathing room
(menu-bar-mode -1)                 ; disable

(setenv "LSP_USE_PLISTS" "true")
