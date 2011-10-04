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

;; Add auto-complete
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete//ac-dict")
(ac-config-default)

;; Set the color theme
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-initialize)
(color-theme-charcoal-black)

;; Hide the toolbar
(if window-system
    (tool-bar-mode -1))
