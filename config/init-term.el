(use-package vterm
  :config
  (setq explicit-shell-file-name "zsh")
  :bind ("C-c t" . vterm-other-window)
  :ensure t)

(provide 'init-term)
