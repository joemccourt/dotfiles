;; Cameron Spickert
;; October 4, 2011

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

;; Lua mode
(autoload 'lua-mode "lua-mode/lua-mode.el"
  "Major mode for editing Lua files" t)
(setq auto-mode-alist
      (cons '("\\.lua" . lua-mode) auto-mode-alist))

;; Php mode
(autoload 'php-mode "php-mode/php-mode.el"
  "Major mode for editing PHP files" t)
(add-to-list 'auto-mode-alist '("\\.php" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc" . php-mode))

;; CSS mode
(autoload 'css-mode "css-mode.el"
  "Major mode for editing CSS files" t)
(add-to-list 'auto-mode-alist '("\\.css" . css-mode))

;; Haml mode
(autoload 'haml-mode "haml-mode.el"
  "Major mode for editing HAML file" t)
(add-to-list 'auto-mode-alist '("\\.haml" . haml-mode))

;; From: http://www.stokebloke.com/wordpress/2008/03/21/css-mode-indent-buffer-fix/
(setq cssm-indent-level 4)
(setq cssm-newline-before-closing-bracket t)
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-mirror-mode nil)

;; nXhtml
;; (load (expand-file-name "~/.emacs.d/site-lisp/nxhtml/autostart"))

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
