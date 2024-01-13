;; Configuration for setting up lsp-mode package

(use-package lsp-mode
  :ensure t
  :init (setq lsp-keymap-prefix "C-c l")
  :config (lsp-enable-which-key-integration t)
  :commands (lsp lsp-deferred))

(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

(setq package-selected-packages '(lsp-mode yasnippet lsp-treemacs helm-lsp
    projectile hydra flycheck company avy which-key helm-xref dap-mode))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))



(provide 'init-lsp-mode)
;;; init-lsp-mode.el ends here
