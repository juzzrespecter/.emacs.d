;;; package --- init-visual package
;;; Commentary: Visual configuration for emacs

;;; Code:
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(menu-bar-mode -1)

; theme loader
(load-theme 'wombat)

					; icons
(use-package all-the-icons
  :ensure t)

(provide 'init-visual)
;;; init-visual.el ends here
