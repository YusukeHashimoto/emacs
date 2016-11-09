(setq load-path (cons "~/.emacs.d/elisp" load-path))
(add-to-list 'load-path "~/.emacs.d/elisp")
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits/")

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



(require 'install-elisp)
(setq install-elisp-repository-directory "~/.emacs.d/elisp")

(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")

(require 'recentf-ext)

(require 'anything-startup)

(require 'helm-config)
(helm-mode 1)

(require 'git-gutter)
(global-git-gutter-mode +1)

(setq default-tab-width 4)

(require 'flycheck)
(global-flycheck-mode)

(add-hook 'after-init-hook #'global-flycheck-mode)

(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

(require 'whitespace)
(setq whitespace-style '(face           ; faceで可視化
                         trailing       ; 行末
                         tabs           ; タブ
;;                         empty          ; 先頭/末尾の空行
                         space-mark     ; 表示のマッピング
                         tab-mark
                         ))

(setq whitespace-display-mappings
      '((tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

(global-whitespace-mode 1)

(setq c-basic-offset 2)
(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

(require 'smooth-scroll)
(smooth-scroll-mode t)

(require 'yascroll)
(global-yascroll-bar-mode 1)
(scroll-bar-mode nil)
