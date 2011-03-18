;; Cameron Spickert
;; March 17, 2010

<<<<<<< HEAD
(autoload 'lua-mode "/usr/local/share/emacs/site-lisp/lua-mode.el"
 "Major mode for Lua." t)

(add-to-list 'load-path "~/.emacs.d/markdown-mode/")
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.text" . markdown-mode) auto-mode-alist))
=======
;; Tab behavior
(setq-default standard-indent 2)
(setq-default indent-tabs-mode nil)
>>>>>>> master

;; Backup file behavior
(setq make-backup-files t)
(setq version-control t)
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

;; Show line numbers
(line-number-mode 1)

;; Fill column setting
(setq-default fill-column 72)
