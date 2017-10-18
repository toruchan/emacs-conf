(package-initialize)

(require 'package)

(add-to-list 'load-path "~/.emacs.d/elisp")

; Add package-archives
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/")) ; ついでにmarmaladeも追加

;; ;;
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits") ;; 好きなディレクトリを指定できる
