(global-set-key "\C-h" 'backward-delete-char)
(column-number-mode t)

(display-battery-mode t)
(setq frame-title-format "%f")
(global-linum-mode t)

(global-set-key (kbd "C-m") 'newline-and-indent)

(define-key global-map (kbd "C-t") 'other-window)

(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq completion-ignore-case t)
(global-auto-revert-mode 1)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(setq load-path (cons "~/.emacs.d/elisp" load-path))

(require 'install-elisp)
(setq install-elisp-repository-directory "~/.emacs.d/elisp")

(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")

(require 'recentf-ext)

(require 'anything-startup)

(require 'helm-config)
(helm-mode 1)

(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
;(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
;(define-key helm-read-files-map (kbd "TAB") 'helm-execute-persistent-action)

(require 'git-gutter)
(global-git-gutter-mode +1)
