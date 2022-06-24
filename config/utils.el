;; get rid of backup files
;; Don't clutter up directories with files~
(setq dotfiles-dir "~/.config/emacs/dotfiles/")
(setq backup-directory-alist `(("." . ,(expand-file-name
                                        (concat dotfiles-dir "backups")))))

;; Don't clutter with #files either
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name (concat dotfiles-dir "backups")))))

;; display line numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; aesthetic choices
(setq inhibit-startup-message t ; remove startup message
      visible-bell nil)         ; remove bell

(tool-bar-mode -1)   ; no toolbar
(scroll-bar-mode -1) ; no scrollbar
(menu-bar-mode -1)   ; no menu bar

(hl-line-mode 1)        ; highlight line
(blink-cursor-mode -1)  ; highlight cursor

;; everything ready to go
(provide 'utils)
