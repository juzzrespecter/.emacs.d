(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l") ;; can be 'C-l' or 's-l' too
  :hook ((ts-mode . lsp)
	 (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred)
  :config
  (lsp-enable-which-key-integration t)
  :ensure t)

(use-package lsp-ui
  :commands lsp-ui-mode
  :ensure t)

(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list
  :ensure t)

(provide 'init-lsp-mode)
