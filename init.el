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

;(require 'helm-config)
;(helm-mode 1)

(require 'git-gutter)
(global-git-gutter-mode +1)

(setq default-tab-width 4)

(require 'flycheck)
(global-flycheck-mode)

(add-hook 'after-init-hook #'global-flycheck-mode)

(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

(setq c-basic-offset 2)
(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

(require 'smooth-scroll)
(smooth-scroll-mode t)

;(require 'yascroll)
;(global-yascroll-bar-mode 1)
;(scroll-bar-mode nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(display-battery-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(defun all-indent ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max))))

(defun electric-indent ()
  "Indent specified region.
When resion is active, indent region.
Otherwise indent whole buffer."
  (interactive)
  (if (use-region-p)
      (indent-region (region-beginning) (region-end))
    (all-indent)))

(global-set-key (kbd "C-M-\\") 'electric-indent)
