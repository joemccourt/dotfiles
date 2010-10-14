; Load markdown-mode
;(autoload 'markdown-mode "markdown-mode.el"
;  "Major mode for editing markdown files" t)
;(setq auto-mode-alist
;      (cons '("\\.mdown" . markdown-mode) auto-mode-alist))

; Load ruby-emacs
(load-file "~/.emacs.d/ruby-emacs/ruby-mode.el")

; Load rails-reloaded
(setq load-path (cons (expand-file-name "~/.emacs.d/rails-reloaded") load-path))
(require 'rails-autoload)