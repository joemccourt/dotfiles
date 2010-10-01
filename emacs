; Load ruby-emacs
(load-file "~/.emacs.d/ruby-emacs/ruby-mode.el")

; Load rails-reloaded
(setq load-path (cons (expand-file-name "~/.emacs.d/rails-reloaded") load-path))
(require 'rails-autoload)