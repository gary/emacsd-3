(setq backup-by-copying-when-linked t
      delete-old-versions t
      kept-new-versions 16
      kept-old-versions 2
      version-control t)

(midnight-delay-set 'midnight-delay 4400)
(add-to-list 'clean-buffer-list-kill-never-buffer-names "*msg*")
(add-to-list 'clean-buffer-list-kill-never-regexps "^\\*shell-")
(append clean-buffer-list-kill-buffer-names '("*Shell Command Output*"
                                              "*Completions*"
                                              "*Occur*"
                                              "*Bookmark List*"
                                              "*Ediff Registry*"
                                              "*ack*"
                                              "*markdown-output*"))
(add-to-list 'clean-buffer-list-kill-regexps "\\.el$")
(add-to-list 'clean-buffer-list-kill-regexps "\\.js$")
(add-to-list 'clean-buffer-list-kill-regexps "\\.rb$")

(let ((var-directory (f-join user-emacs-directory "var"))
      (emacs-tmp-dir (format "%s%s%s" temporary-file-directory "emacs" (user-uid))))
  (setq abbrev-file-name (f-join var-directory "abbrev_defs")
        auto-save-file-name-transforms `((".*" ,emacs-tmp-dir t))
        auto-save-list-file-prefix   emacs-tmp-dir
        backup-directory-alist       `(("." . ,emacs-tmp-dir))
        bookmark-default-file        (f-join var-directory "emacs.bmk")
        custom-file                  my-custom-file
        emacs-download-dir           (f-join var-directory "downloads/")
        ido-save-directory-list-file (f-join var-directory "ido.last")
        ispell-personal-dictionary   (f-join var-directory "ispell_english")
        projectile-cache-file (f-join var-directory "projectile.cache")
        projectile-known-projects-file (f-join var-directory "projectile-bookmarks.eld")
        recentf-save-file            (f-join var-directory "recentf")
        save-place-file              (f-join var-directory "places")
        slime-repl-history-file      (f-join var-directory "slime-history.eld")
        smex-save-file               (f-join var-directory "smex-items")
        tramp-persistency-file-name  (f-join var-directory "tramp")
        xkcd-cache-dir               (f-join var-directory "xkcd/")
        xkcd-cache-latest            (f-join xkcd-cache-dir "latest")
        ))

(provide 'my-file-management)
