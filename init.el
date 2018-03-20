(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

(eval-when-compile
  (require 'use-package))

(use-package delight :defer t)
(use-package f       :demand t)

(defconst my-custom-file
  (f-join user-emacs-directory "lisp" user-login-name "my-custom.el"))
