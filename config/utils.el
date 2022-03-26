;; get rid of backup files
;; Don't clutter up directories with files~
(setq dotfiles-dir "~/.emacs.d/dotfiles/")
(setq backup-directory-alist `(("." . ,(expand-file-name
                                        (concat dotfiles-dir "backups")))))

;; Don't clutter with #files either
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name (concat dotfiles-dir "backups")))))

(provide 'utils)
