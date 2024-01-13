;; modeline
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode t))

;; col num. mode
(column-number-mode)
(global-display-line-numbers-mode t)
(dolist (mode '(org-mode-hook
		term-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda() (display-line-numbers-mode 0))))

;; rainbow delimiters for visual parenthesis pairing
(use-package rainbow-delimiters
  :hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; which-key
(use-package which-key
  :ensure t
  :init (which-key-mode))

;; backup | autosave file mgmt
(custom-set-variables
 '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
 '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))
(make-directory "~/.emacs.d/autosaves/" t)

(provide 'init-graphics)
;;; init-graphics.el ends here
