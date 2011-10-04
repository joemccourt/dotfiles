;; Cameron Spickert
;; March 17, 2010

;; Tab behavior
(setq-default standard-indent 2)
(setq-default indent-tabs-mode nil)

;; Backup file behavior
(setq make-backup-files t)
(setq version-control t)
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

;; Show line numbers
(line-number-mode 1)

;; Fill column setting
(setq-default fill-column 72)

;; Load path
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme")

;; Markdown mode
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
  (cons '("\\.md" . markdown-mode) auto-mode-alist))

;; Ruby mode
(autoload 'ruby-mode "ruby-mode.el"
  "Major mode for editing Ruby files" t)
(setq auto-mode-alist
  (cons '("\\.rb" . ruby-mode) auto-mode-alist))

;; Set the color theme
(load-library "color-theme")
