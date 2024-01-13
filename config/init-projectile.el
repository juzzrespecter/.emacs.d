;;; package --- Setup configuration for projectile
;;; Commentary:

;;; Code:
(use-package projectile
  :ensure t
  :init (setq projectile-project-search-path '("~/Workspace"))
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-o" . projectile-command-map)
              ("C-c p" . projectile-command-map)))

(provide 'init-projectile)
;;; init-projectile.el ends here

