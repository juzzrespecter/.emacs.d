;;; package --- init
;;; Commentary: init package configuration

;;; Code:
; add config directory to path
(add-to-list 'load-path
	     (expand-file-name "config" user-emacs-directory))

;; Package manager
(require 'init-package-manager)

;; visual
(require 'init-visual)

;; minibuffer manager
(require 'init-helm)

(setq custom-file "~/.emacs.d/config/init-custom.el")
(load custom-file)

;; Magit
(require 'init-magit)

;; Require graphical packages
(require 'init-graphics)

;; Require lsp packages
(require 'init-lsp)

;; tramp config
(require 'init-tramp)

;;; init.el ends here
