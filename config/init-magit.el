(use-package magit
  :ensure t
  :commands
  (magit-status magit-git-command-branch)
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

(provide 'init-magit)
