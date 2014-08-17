;; Now let's get it on!
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")


(unless (require 'el-get nil 'noerror)
    (with-current-buffer
            (url-retrieve-synchronously
	             "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
	        (goto-char (point-max))
		    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)



;; GET MY DAMN PATHS
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(column-number-mode t)
 '(custom-safe-themes (quote ("86a0eb1eedce0cc34ad7924fb5ad4ca7826f46771d35ea562fe5cf3987cf403f" default)))
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote (("/Users/_druu/Sites" "Websites") ("/Users/_druu/Devtools" "Devtools") ("/Volumes/Legacy/OTHER_REPOS" "Other Repos") ("/Users/_druu/Sites/teamy.dev" "Teamy"))))
 '(global-font-lock-mode t nil (font-lock))
 '(tool-bar-mode nil))

;;(set-face-attribute 'default nil :family "Source Code Pro Light" :height 120)
(set-face-attribute 'default nil :family "PragmataPro" :height 120)

;; pc selection mode (shift-cursor)
(delete-selection-mode)

;; own keyboard shortcuts
(when (eq system-type 'darwin)             ;; mac only
  (setq mac-option-modifier nil)          ;; left option  == alt
  (setq mac-right-option-modifier 'meta)   ;; right option == meta
)





(global-set-key (kbd "M-r") 'replace-string)
(global-set-key (kbd "C-M--") 'hippie-expand)
(global-set-key (kbd "C-M-#") 'uncomment-region)
(global-set-key (kbd "C-#") 'comment-region)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-c l") 'goto-line)
(global-set-key (kbd "C-M-,") 'icicle-mode)

;; misc settings
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)     ; use spaces (not tabs) for indenting
(setq-default truncate-lines t)         ; dont wrap lines
(flyspell-mode 0)                       ; no flyspell by default


;; Show line number in the mode line.
(line-number-mode 1)

;; Show column number in the mode line.
(column-number-mode 1)

;; Emacs is a text editor, make sure your text files end in a newline
(setq require-final-newline 't)

;; ------- hide those stupid buttons ---------
(menu-bar-mode 1)

;; ------------ show spaces and tabs ------------
(require 'blank-mode)

;; rectangular mode
(require 'rect-mark)



(require 'column-marker)
;; (set-face-background 'column-marker-1 "red")
(add-hook 'python-mode-hook
          (lambda () (interactive)
            (column-marker-1 fill-column)))

;; Never byte-compile your .emacs file by hand again
(defun autocompile nil
  "compile itself if ~/.emacs"
  (interactive)
  (require 'bytecomp)
  (if (string= (buffer-file-name) (expand-file-name (concat default-directory ".emacs")))
      (byte-compile-file (buffer-file-name))))

;(add-hook 'after-save-hook 'autocompile)


;; some hooks
(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode)  auto-mode-alist))
(setq auto-mode-alist (cons '("\\.ihtml$" . html-helper-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.phtml$" . php-mode)  auto-mode-alist))
(setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.inc$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.sublime-snippet$" . nxml-mode) auto-mode-alist))


;; better paren matching
;; http://www.emacswiki.org/elisp/mic-paren.el
(require 'mic-paren) ; loading
(paren-activate)     ; activating
(setq paren-display-message t)

;; https://github.com/joodland/bm/blob/master/bm.el
(require 'bm)
(global-set-key (kbd "<C-f2>") 'bm-toggle)
(global-set-key (kbd "<f2>")   'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)


;; Brackets/Quotes pairing
(require 'autopair)
(autopair-global-mode)


;; set up unicode
(require 'un-define "un-define" t)
(set-buffer-file-coding-system 'utf-8 'utf-8-unix)
(set-default buffer-file-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(prefer-coding-system 'utf-8-unix)


(require 'magit)
(global-set-key (kbd "C-x m") 'magit-status)


;; flycheck yay
;; (add-hook 'after-init-hook #'global-flycheck-mode)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(require 'color-theme)
    ;; set default color theme
    (color-theme-deep-blue)


;; Line Numbers
(add-hook 'find-file-hook (lambda () (linum-mode 1)))


;; simp projects
(require 'simp)
 
(simp-project-define
 '(:has (.git)
   :ignore (tmp coverage log logs vendor bower .git public/system public/assets)))
 
(global-set-key [(control p)] 'simp-project-find-file)


;; place backup and auto-save files in tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; MAXIMIZE
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)


;; ECB
(require 'cedet)
(require 'ecb)

(setq ecb-tip-of-the-day nil)   ;; disable tip of the day
(ecb-activate)


;; Multiple Cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Semantics
(semantic-mode 1)

;;; .emacs ends here



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
