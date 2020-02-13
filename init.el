(package-initialize)

(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))


(add-to-list 'load-path "~/.emacs.d/elisp")

; Add package-archives
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/")) ; ついでにmarmaladeも追加

;; ;;
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits") ;; 好きなディレクトリを指定できる
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (auto-correct robe flycheck company-go go-mode rjsx-mode markdown-mode yaml-mode slim-mode php-mode init-loader auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; flycheck
(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq flycheck-checker 'ruby-rubocop)
             (flycheck-mode 1)))
(defun ruby-mode-set-encoding () nil)
(require 'auto-complete-config)
(ac-config-default)
(setq ruby-insert-encoding-magic-comment nil) 

(add-hook 'js-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))
