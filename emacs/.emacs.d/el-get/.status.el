((autopair status "installed" recipe
           (:name autopair :website "https://github.com/capitaomorte/autopair" :description "Autopair is an extension to the Emacs text editor that automatically pairs braces and quotes." :type github :pkgname "capitaomorte/autopair" :features autopair))
 (blank-mode status "installed" recipe
             (:name blank-mode :auto-generated t :type elpa :description "minor mode to visualize TAB, (HARD) SPACE, NEWLINE" :repo
                    ("melpa" . "http://melpa.milkbox.net/packages/")))
 (bm status "installed" recipe
     (:name bm :pkgname "joodland/bm" :website "http://joodland.github.com/bm/" :type github :description "Visible, persistent, buffer local, bookmarks"))
 (cedet status "installed" recipe
        (:name cedet :website "http://cedet.sourceforge.net/" :description "CEDET is a Collection of Emacs Development Environment Tools written with the end goal of creating an advanced development environment in Emacs." :type bzr :url "bzr://cedet.bzr.sourceforge.net/bzrroot/cedet/code/trunk" :build
               `(("sh" "-c" "touch `find . -name Makefile`")
                 ("make" ,(format "EMACS=%s"
                                  (shell-quote-argument el-get-emacs))
                  "clean-all")
                 ("make" ,(format "EMACS=%s"
                                  (shell-quote-argument el-get-emacs)))
                 ("make" ,(format "EMACS=%s"
                                  (shell-quote-argument el-get-emacs))
                  "-C" "contrib"))
               :build/berkeley-unix
               `(("sh" "-c" "touch `find . -name Makefile`")
                 ("gmake" ,(format "EMACS=%s"
                                   (shell-quote-argument el-get-emacs))
                  "clean-all")
                 ("gmake" ,(format "EMACS=%s"
                                   (shell-quote-argument el-get-emacs)))
                 ("gmake" ,(format "EMACS=%s"
                                   (shell-quote-argument el-get-emacs))
                  "-C" "contrib"))
               :build/windows-nt
               ("echo #!/bin/sh > tmp.sh & echo touch `/usr/bin/find . -name Makefile` >> tmp.sh & echo make FIND=/usr/bin/find >> tmp.sh" "sed 's/^M$//' tmp.sh  > tmp2.sh" "sh ./tmp2.sh" "rm ./tmp.sh ./tmp2.sh")
               :features nil :lazy nil :post-init
               (if
                   (or
                    (featurep 'cedet-devel-load)
                    (featurep 'eieio))
                   (message
                    (concat "Emacs' built-in CEDET has already been loaded!  Restart" " Emacs to load CEDET from el-get instead."))
                 (load
                  (expand-file-name "cedet-devel-load.el" pdir)))))
 (cl-lib status "installed" recipe
         (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (color-theme status "installed" recipe
              (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
                     ("xzf")
                     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
                     (progn
                       (color-theme-initialize)
                       (setq color-theme-is-global t))))
 (column-marker status "installed" recipe
                (:name column-marker :description "Highlight certain character columns" :type emacswiki :features column-marker))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (dirtree status "installed" recipe
          (:name dirtree :description "Functions for building directory-tree lists" :type http :url "http://www.splode.com/~friedman/software/emacs-lisp/src/dirtree.el" :features dirtree))
 (doremi status "installed" recipe
         (:name doremi :auto-generated t :type elpa :description "Do Re Mi: Incremental change using arrow keys or mouse wheel." :repo
                ("melpa" . "http://melpa.milkbox.net/packages/")))
 (doremi-cmd status "installed" recipe
             (:name doremi-cmd :auto-generated t :type elpa :description "Miscellaneous Do Re Mi commands" :repo
                    ("melpa" . "http://melpa.milkbox.net/packages/")
                    :depends
                    (doremi)))
 (ecb status "installed" recipe
      (:name ecb :description "Emacs Code Browser" :type github :pkgname "alexott/ecb" :depends cedet :build
             `(("make" "CEDET=../cedet" ,(concat "EMACS="
                                                 (shell-quote-argument el-get-emacs))))))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
                ("el-get.*\\.el$" "methods/")
                :load "el-get.el"))
 (epl status "installed" recipe
      (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (exec-path-from-shell status "installed" recipe
                       (:name exec-path-from-shell :website "https://github.com/purcell/exec-path-from-shell" :description "Emacs plugin for dynamic PATH loading" :type github :pkgname "purcell/exec-path-from-shell"))
 (f status "installed" recipe
    (:name f :website "https://github.com/rejeep/f.el" :description "Modern API for working with files and directories in Emacs" :depends
           (s dash)
           :type github :pkgname "rejeep/f.el"))
 (flycheck status "installed" recipe
           (:name flycheck :type github :pkgname "flycheck/flycheck" :description "On-the-fly syntax checking extension" :build
                  '(("makeinfo" "-o" "doc/flycheck.info" "doc/flycheck.texi"))
                  :info "./doc" :depends
                  (s dash cl-lib f pkg-info)))
 (git-modes status "installed" recipe
            (:name git-modes :description "GNU Emacs modes for various Git-related files" :type github :pkgname "magit/git-modes"))
 (magit status "installed" recipe
        (:name magit :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :depends
               (cl-lib git-modes)
               :info "." :build
               (if
                   (version<= "24.3" emacs-version)
                   `(("make" ,(format "EMACS=%s" el-get-emacs)
                      "all"))
                 `(("make" ,(format "EMACS=%s" el-get-emacs)
                    "docs")))
               :build/berkeley-unix
               (("touch" "`find . -name Makefile`")
                ("gmake"))
               :prepare
               (require 'magit-autoloads)))
 (maxframe status "installed" recipe
           (:name maxframe :description "Maxframe provides the ability to maximize the emacs frame and stay within the display resolution." :type github :pkgname "rmm5t/maxframe.el" :prepare
                  (progn
                    (autoload 'maximize-frame "maxframe" "Maximizes the frame to fit the display if under a windowing\nsystem." t)
                    (autoload 'restore-frame "maxframe" "Restores a maximized frame.  See `maximize-frame'." t))))
 (mic-paren status "installed" recipe
            (:name mic-paren :description "Advanced highlighting of matching parentheses." :type emacswiki))
 (multiple-cursors status "installed" recipe
                   (:name multiple-cursors :description "An experiment in adding multiple cursors to emacs" :type github :pkgname "magnars/multiple-cursors.el"))
 (package status "installed" recipe
          (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
                 (progn
                   (let
                       ((old-package-user-dir
                         (expand-file-name
                          (convert-standard-filename
                           (concat
                            (file-name-as-directory default-directory)
                            "elpa")))))
                     (when
                         (file-directory-p old-package-user-dir)
                       (add-to-list 'package-directory-list old-package-user-dir)))
                   (setq package-archives
                         (bound-and-true-p package-archives))
                   (mapc
                    (lambda
                      (pa)
                      (add-to-list 'package-archives pa 'append))
                    '(("ELPA" . "http://tromey.com/elpa/")
                      ("melpa" . "http://melpa.milkbox.net/packages/")
                      ("gnu" . "http://elpa.gnu.org/packages/")
                      ("marmalade" . "http://marmalade-repo.org/packages/")
                      ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (php-mode status "installed" recipe
           (:name php-mode :description "A PHP mode for GNU Emacs " :type github :pkgname "ejmr/php-mode" :website "https://github.com/ejmr/php-mode"))
 (pkg-info status "installed" recipe
           (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
                  (dash epl)))
 (pyflakes status "installed" recipe
           (:name pyflakes :auto-generated t :type elpa :description "run the python pyflakes checker putting hits in a grep buffer" :repo
                  ("marmalade" . "http://marmalade-repo.org/packages/")))
 (pymacs status "installed" recipe
         (:name pymacs :description "Interface between Emacs Lisp and Python" :type github :pkgname "pinard/Pymacs" :prepare
                (progn
                  (el-get-envpath-prepend "PYTHONPATH" default-directory)
                  (autoload 'pymacs-load "pymacs" nil t)
                  (autoload 'pymacs-eval "pymacs" nil t)
                  (autoload 'pymacs-exec "pymacs" nil t)
                  (autoload 'pymacs-call "pymacs")
                  (autoload 'pymacs-apply "pymacs"))
                :build
                ("make")))
 (rect-mark status "installed" recipe
            (:name rect-mark :description "Mark a rectangle of text with highlighting." :type emacswiki))
 (rope status "installed" recipe
       (:name rope :description "A python refactoring library" :post-init
              (el-get-envpath-prepend "PYTHONPATH" default-directory)
              :type git :url "https://github.com/python-rope/rope.git"))
 (ropemacs status "installed" recipe
           (:name ropemacs :description "An Emacs minor mode for using rope python refactoring library in emacs." :post-init
                  (progn
                    (unless
                        (boundp 'pymacs-load-path)
                      (setq pymacs-load-path nil))
                    (add-to-list 'pymacs-load-path default-directory))
                  :depends
                  (rope ropemode)
                  :type git :url "https://github.com/python-rope/ropemacs"))
 (ropemode status "installed" recipe
           (:name ropemode :description "Common parts of ropemacs and ropevim." :post-init
                  (progn
                    (unless
                        (boundp 'pymacs-load-path)
                      (setq pymacs-load-path nil))
                    (add-to-list 'pymacs-load-path default-directory))
                  :type git :url "https://github.com/python-rope/ropemode"))
 (s status "installed" recipe
    (:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el"))
 (simp status "installed" recipe
       (:name simp :auto-generated t :type elpa :description "Simple project definition, chiefly for file finding, and grepping" :repo
              ("melpa" . "http://melpa.milkbox.net/packages/")))
 (tramp status "installed" recipe
        (:name tramp :description "Transparent Remote Access, Multiple Protocols." :website "http://www.gnu.org/s/tramp/" :type git :url "git://git.savannah.gnu.org/tramp.git" :build
               `(("autoconf")
                 ("./configure" ,(concat "--with-emacs=" el-get-emacs)
                  "--with-contrib" ,(concat "--prefix="
                                            (expand-file-name
                                             (el-get-package-directory "tramp"))))
                 ("make")
                 ("make" "install"))
               :load-path
               ("./lisp")
               :autoloads
               ("trampver.el" "tramp-loaddefs.el")
               :prepare
               (progn
                 (autoload 'tramp-check-proper-method-and-host "tramp.el"))
               :info "share/info"))
 (web-mode status "installed" recipe
           (:name web-mode :description "emacs major mode for editing PHP/JSP/ASP HTML templates (with embedded CSS and JS blocks)" :type github :pkgname "fxbois/web-mode")))
