; set up emacs init page
(setq inhibit-startup-message t
      visible-bell nil)
(setq initial-buffer-choice "~/Workspace")
(add-hook 'emacs-startup-hook
	  (lambda ()
	    (vterm-other-window)))

; init package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

; set emacs theme
(use-package web-mode
  :ensure t)
(use-package zenburn-theme
	     :ensure t
	     :config
	     (load-theme 'zenburn t))

(use-package command-log-mode)

; ( ͡° ͜ʖ ͡°)
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00" "7e068da4ba88162324d9773ec066d93c447c76e9f4ae711ddd0c5d3863489c52" "bf948e3f55a8cd1f420373410911d0a50be5a04a8886cabe8d8e471ad8fdba8e" "631c52620e2953e744f2b56d102eae503017047fb43d65ce028e88ef5846ea3b" "2dd4951e967990396142ec54d376cced3f135810b2b69920e77103e0bcedfba9" default))
 '(package-selected-packages
   '(lsp-treemacs lsp-ui typescript-mode lsp-mode nyan-mode vterm magit projectile doom-themes which-key rainbow-delimiters rainbow-delimeters doom-modeline helm-xref helm zenburn-theme web-mode use-package command-log-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Pretty things 
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; Rainbow delimiters
(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

;; which-key
(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.3)
  :ensure t)

(require 'utils)
(require 'init-helm)
(require 'c-mode)
(require 'init-ts-mode)
(require 'init-projectile)
(require 'init-magit)
(require 'init-term)
(require 'init-lsp-mode)
(require 'init-go-mode)
(require 'mode.docker)

;; testing
(defun log-test-func ()
  (setq log-dir-v
	(concat user-emacs-directory "log.txt"))
  (append-to-file
   (format "%s" (buffer-list)) nil log-dir-v)
  (append-to-file
   "\n" nil log-dir-v))

(add-hook 'emacs-startup-hook 'log-test-func)
