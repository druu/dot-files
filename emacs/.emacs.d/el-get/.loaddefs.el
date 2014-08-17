;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (autopair-global-mode autopair-mode) "autopair/autopair"
;;;;;;  "autopair/autopair.el" (21414 43842 0 0))
;;; Generated autoloads from autopair/autopair.el

(autoload 'autopair-mode "autopair/autopair" "\
Automagically pair braces and quotes like in TextMate.

\(fn &optional ARG)" t nil)

(defvar autopair-global-mode nil "\
Non-nil if Autopair-Global mode is enabled.
See the command `autopair-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `autopair-global-mode'.")

(custom-autoload 'autopair-global-mode "autopair/autopair" nil)

(autoload 'autopair-global-mode "autopair/autopair" "\
Toggle Autopair mode in all buffers.
With prefix ARG, enable Autopair-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Autopair mode is enabled in all buffers where
`autopair-on' would do it.
See `autopair-mode' for more information on Autopair mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (blank-cleanup-region blank-cleanup global-blank-toggle-options
;;;;;;  blank-toggle-options blank-mode) "blank-mode/blank-mode"
;;;;;;  "blank-mode/blank-mode.el" (21488 5763 0 0))
;;; Generated autoloads from blank-mode/blank-mode.el

(autoload 'blank-mode "blank-mode/blank-mode" "\
Toggle blank minor mode visualization (\"bl\" on modeline).

If ARG is null, toggle blank visualization.
If ARG is a number greater than zero, turn on visualization;
otherwise, turn off visualization.
Only useful with a windowing system.

\(fn &optional ARG)" t nil)

(autoload 'blank-toggle-options "blank-mode/blank-mode" "\
Toggle local `blank-mode' options.

If local blank-mode is off, toggle the option given by ARG and
turn on local blank-mode.

If local blank-mode is on, toggle the option given by ARG and
restart local blank-mode.

Interactively, it reads one of the following chars:

  CHAR	MEANING
   t	toggle TAB visualization
   s	toggle SPACE and HARD SPACE visualization
   r	toggle trailing blanks visualization
   b	toggle SPACEs before TAB visualization
   l	toggle \"long lines\" visualization
   L	toggle \"long lines\" tail visualization
   n	toggle NEWLINE visualization
   i	toggle indentation SPACEs visualization
   e	toggle empty line at bob and/or eob visualization
   a	toggle SPACEs after TAB visualization
   c	toggle color faces
   m	toggle visual mark
   x	restore `blank-chars' value
   z	restore `blank-style' value
   ?	display brief help

Non-interactively, ARG should be a symbol or a list of symbols.
The valid symbols are:

   tabs			toggle TAB visualization
   spaces		toggle SPACE and HARD SPACE visualization
   trailing		toggle trailing blanks visualization
   space-before-tab	toggle SPACEs before TAB visualization
   lines		toggle \"long lines\" visualization
   lines-tail		toggle \"long lines\" tail visualization
   newline		toggle NEWLINE visualization
   indentation		toggle indentation SPACEs visualization
   empty		toggle empty line at bob and/or eob visualization
   space-after-tab	toggle SPACEs after TAB visualization
   color		toggle color faces
   mark			toggle visual mark
   blank-chars		restore `blank-chars' value
   blank-style		restore `blank-style' value

Only useful with a windowing system.

\(fn ARG)" t nil)

(autoload 'global-blank-toggle-options "blank-mode/blank-mode" "\
Toggle global `blank-mode' options.

If global blank-mode is off, toggle the option given by ARG and
turn on global blank-mode.

If global blank-mode is on, toggle the option given by ARG and
restart global blank-mode.

Interactively, it reads one of the following chars:

  CHAR	MEANING
   t	toggle TAB visualization
   s	toggle SPACE and HARD SPACE visualization
   r	toggle trailing blanks visualization
   b	toggle SPACEs before TAB visualization
   l	toggle \"long lines\" visualization
   L	toggle \"long lines\" tail visualization
   n	toggle NEWLINE visualization
   i	toggle indentation SPACEs visualization
   e	toggle empty line at bob and/or eob visualization
   a	toggle SPACEs after TAB visualization
   c	toggle color faces
   m	toggle visual mark
   x	restore `blank-chars' value
   z	restore `blank-style' value
   ?	display brief help

Non-interactively, ARG should be a symbol or a list of symbols.
The valid symbols are:

   tabs			toggle TAB visualization
   spaces		toggle SPACE and HARD SPACE visualization
   trailing		toggle trailing blanks visualization
   space-before-tab	toggle SPACEs before TAB visualization
   lines		toggle \"long lines\" visualization
   lines-tail		toggle \"long lines\" tail visualization
   newline		toggle NEWLINE visualization
   indentation		toggle indentation SPACEs visualization
   empty		toggle empty line at bob and/or eob visualization
   space-after-tab	toggle SPACEs after TAB visualization
   color		toggle color faces
   mark			toggle visual mark
   blank-chars		restore `blank-chars' value
   blank-style		restore `blank-style' value

Only useful with a windowing system.

\(fn ARG)" t nil)

(autoload 'blank-cleanup "blank-mode/blank-mode" "\
Cleanup some blank problems in all buffer or at region.

It usually applies to the whole buffer, but in transient mark
mode when the mark is active, it applies to the region.  It also
applies to the region when it is not in transiente mark mode, the
mark is active and it was pressed `C-u' just before calling
`blank-cleanup' interactively.

See also `blank-cleanup-region'.

The problems, which are cleaned up, are:

1. empty lines at beginning of buffer.
2. empty lines at end of buffer.
   If `blank-chars' has `empty' as an element, remove all empty
   lines at beginning and/or end of buffer.

3. 8 or more SPACEs at beginning of line.
   If `blank-chars' has `indentation' as an element, replace 8 or
   more SPACEs at beginning of line by TABs.

4. SPACEs before TAB.
   If `blank-chars' has `space-before-tab' as an element, replace
   SPACEs by TABs.

5. SPACEs or TABs at end of line.
   If `blank-chars' has `trailing' as an element, remove all
   SPACEs or TABs at end of line.

6. 8 or more SPACEs after TAB.
   If `blank-chars' has `space-after-tab' as an element, replace
   SPACEs by TABs.

\(fn)" t nil)

(autoload 'blank-cleanup-region "blank-mode/blank-mode" "\
Cleanup some blank problems at region.

The problems, which are cleaned up, are:

1. 8 or more SPACEs at beginning of line.
   If `blank-chars' has `indentation' as an element, replace 8 or
   more SPACEs at beginning of line by TABs.

2. SPACEs before TAB.
   If `blank-chars' has `space-before-tab' as an element, replace
   SPACEs by TABs.

3. SPACEs or TABs at end of line.
   If `blank-chars' has `trailing' as an element, remove all
   SPACEs or TABs at end of line.

4. 8 or more SPACEs after TAB.
   If `blank-chars' has `space-after-tab' as an element, replace
   SPACEs by TABs.

\(fn START END)" t nil)

;;;***

;;;### (autoloads (bm-previous-mouse bm-common-previous bm-previous
;;;;;;  bm-next-mouse bm-common-next bm-next bm-lifo-next bm-lifo-previous
;;;;;;  bm-toggle-mouse bm-toggle) "bm/bm" "bm/bm.el" (21414 43645
;;;;;;  0 0))
;;; Generated autoloads from bm/bm.el

(autoload 'bm-toggle "bm/bm" "\
Toggle bookmark at point.

\(fn)" t nil)

(autoload 'bm-toggle-mouse "bm/bm" "\
Toggle a bookmark with a mouse click.
EV is the mouse event.

\(fn EV)" t nil)

(autoload 'bm-lifo-previous "bm/bm" "\
Goto previous bookmark in LIFO order . (that is, most
recently set ones come first, oldest ones come last)

\(fn)" t nil)

(autoload 'bm-lifo-next "bm/bm" "\
Goto next bookmark in LIFO order .(that is, most
recently set ones come first, oldest ones come last)

\(fn)" t nil)

(autoload 'bm-next "bm/bm" "\


\(fn)" t nil)

(autoload 'bm-common-next "bm/bm" "\
Goto next bookmark.

\(fn)" t nil)

(autoload 'bm-next-mouse "bm/bm" "\
Go to the next bookmark with the scroll wheel.
EV is the mouse event.

\(fn EV)" t nil)

(autoload 'bm-previous "bm/bm" "\


\(fn)" t nil)

(autoload 'bm-common-previous "bm/bm" "\
Goto previous bookmark.

\(fn)" t nil)

(autoload 'bm-previous-mouse "bm/bm" "\
Go to the previous bookmark with the scroll wheel.
EV is the mouse event.

\(fn EV)" t nil)

;;;***

;;;### (autoloads (color-theme-initialize color-theme-submit color-theme-install
;;;;;;  color-theme-compare color-theme-make-snapshot color-theme-analyze-defun
;;;;;;  color-theme-print color-theme-install-at-point-for-current-frame
;;;;;;  color-theme-install-at-mouse color-theme-describe color-theme-select)
;;;;;;  "color-theme/color-theme" "color-theme/color-theme.el" (17529
;;;;;;  41105 0 0))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme/color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "column-marker/column-marker" "column-marker/column-marker.el"
;;;;;;  (21488 5769 0 0))
;;; Generated autoloads from column-marker/column-marker.el

(autoload 'column-marker-1 "column-marker" "\
Highlight a column." t)

;;;***

;;;### (autoloads (doremi-window-width+ doremi-window-height+ doremi-global-marks+
;;;;;;  doremi-marks+ doremi-buffers+ doremi-bookmarks+ doremi-color-themes+
;;;;;;  doremi-color-themes doremi-themes-update-flag doremi-misc-commands)
;;;;;;  "doremi-cmd/doremi-cmd" "doremi-cmd/doremi-cmd.el" (21488
;;;;;;  5980 0 0))
;;; Generated autoloads from doremi-cmd/doremi-cmd.el

(let ((loads (get 'doremi-misc-commands 'custom-loads))) (if (member '"doremi-cmd/doremi-cmd" loads) nil (put 'doremi-misc-commands 'custom-loads (cons '"doremi-cmd/doremi-cmd" loads))))

(defvar doremi-themes-update-flag nil "\
*Non-nil means choosing a theme saves the updated list of themes.
This applies to commands `doremi-custom-themes+' and
`doremi-color-themes+' and their respective options,
`doremi-custom-themes' and `doremi-color-themes'.

A prefix arg to the command flips the option value for the duration of
the command.")

(custom-autoload 'doremi-themes-update-flag "doremi-cmd/doremi-cmd" t)

(defvar doremi-color-themes nil "\
*List of color themes to cycle through using `doremi-color-themes+'.")

(custom-autoload 'doremi-color-themes "doremi-cmd/doremi-cmd" t)

(autoload 'doremi-color-themes+ "doremi-cmd/doremi-cmd" "\
Successively cycle among color themes.
The themes used for cycling are those in option `doremi-color-themes'.

You can use `C-g' to quit and cancel changes made so far.
Alternatively, after using `doremi-color-themes+' you can use
`color-theme-select' and choose pseudo-theme `[Reset]' - that does the
same thing.  Note that in either case, some things might not be
restored.

Option `doremi-themes-update-flag' determines whether the updated
value of `doremi-color-themes' is saved.  A prefix arg to this command
flips the option value for the current invocation of the command.

To use this command, you must have loaded library `color-theme.el',
available from http://www.nongnu.org/color-theme.  See also:
http://www.emacswiki.org/ColorTheme.

\(fn &optional FLIP)" t nil)

(autoload 'doremi-bookmarks+ "doremi-cmd/doremi-cmd" "\
Successively cycle among all bookmarks.

\(fn)" t nil)

(autoload 'doremi-buffers+ "doremi-cmd/doremi-cmd" "\
Successively cycle among all existing buffers.
You can use `C-g' to quit and return to the original buffer.

\(fn)" t nil)

(autoload 'doremi-marks+ "doremi-cmd/doremi-cmd" "\
Successively cycle among all marks in the `mark-ring'.
You can use `C-g' to quit and return to the original position.
If library `crosshairs.el' is used, highlight each visited mark
position temporarily.

\(fn)" t nil)

(autoload 'doremi-global-marks+ "doremi-cmd/doremi-cmd" "\
Successively cycle among all marks in the `global-mark-ring'.
You can use `C-g' to quit and return to the original position.
If library `crosshairs.el' is used, highlight each visited mark
position temporarily.

\(fn)" t nil)

(autoload 'doremi-window-height+ "doremi-cmd/doremi-cmd" "\
Change height of WINDOW incrementally.
INCREMENT is the size increment.
WINDOW is selected.  WINDOW defaults to the selected window.

\(fn &optional INCREMENT WINDOW)" t nil)

(autoload 'doremi-window-width+ "doremi-cmd/doremi-cmd" "\
Change width of WINDOW incrementally.
INCREMENT is the size increment.
WINDOW is selected.  WINDOW defaults to the selected window.

\(fn &optional INCREMENT WINDOW)" t nil)

;;;***

;;;### (autoloads (doremi-boost-scale-factor doremi-boost-down-keys
;;;;;;  doremi-boost-up-keys doremi-down-keys doremi-up-keys doremi)
;;;;;;  "doremi/doremi" "doremi/doremi.el" (21488 5899 0 0))
;;; Generated autoloads from doremi/doremi.el

(let ((loads (get 'doremi 'custom-loads))) (if (member '"doremi/doremi" loads) nil (put 'doremi 'custom-loads (cons '"doremi/doremi" loads))))

(defvar doremi-up-keys '(up) "\
*Keys (events) associated with one direction of adjusting by `doremi'.
The other direction is associated with `doremi-down-keys'.

The value must be a list of keyboard events: characters or symbols.
For example, a list element might be `?' or `prior'.")

(custom-autoload 'doremi-up-keys "doremi/doremi" t)

(defvar doremi-down-keys '(down) "\
*Keys (events) associated with one direction of adjusting by `doremi'.
The other direction is associated with `doremi-up-keys'.

The value must be a list of keyboard events: characters or symbols.
For example, a list element might be `?' or `next'.")

(custom-autoload 'doremi-down-keys "doremi/doremi" t)

(defvar doremi-boost-up-keys '(M-up) "\
*Like `doremi-up-keys', but increments by `doremi-boost-scale-factor'.

The value must be a list of keyboard events: characters or symbols.
For example, a list element might be `?\360' or `S-prior'.")

(custom-autoload 'doremi-boost-up-keys "doremi/doremi" t)

(defvar doremi-boost-down-keys '(M-down) "\
*Like `doremi-down-keys', but increments by `doremi-boost-scale-factor'.

The value must be a list of keyboard events: characters or symbols.
For example, a list element might be `?\356' or `S-next'.")

(custom-autoload 'doremi-boost-down-keys "doremi/doremi" t)

(defvar doremi-boost-scale-factor 10 "\
*Factor to boost incremental change of numerical properties.
Using `doremi-boost-up-keys' or `doremi-boost-down-keys', instead of
`doremi-up-keys' or `doremi-down-keys' means that the increment is
this many times larger.  Using a modifier key with the mouse wheel has
the same effect as using `doremi-boost-up-keys' or
`doremi-boost-down-keys'.")

(custom-autoload 'doremi-boost-scale-factor "doremi/doremi" t)

;;;***

;;;### (autoloads (ecb-byte-compile ecb-minor-mode ecb-activate)
;;;;;;  "ecb/ecb" "ecb/ecb.el" (21487 63349 0 0))
;;; Generated autoloads from ecb/ecb.el

(autoload 'ecb-activate "ecb/ecb" "\
Activates ECB and creates the special buffers for the choosen layout.
For the layout see `ecb-layout-name'. This function raises always the
ECB-frame if called from another frame. This is the same as calling
`ecb-minor-mode' with a positive argument.

\(fn)" t nil)

(autoload 'ecb-minor-mode "ecb/ecb" "\
Toggle ECB minor mode.
With prefix argument ARG, turn on if positive, otherwise off. Return non-nil
if the minor mode is enabled.

\\{ecb-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'ecb-byte-compile "ecb/ecb" "\
Byte-compiles the ECB package.
This is done for all lisp-files of ECB if FORCE-ALL is not nil or for each
lisp-file FILE.el which is either newer than FILE.elc or if FILE.elc doesn't
exist.

\(fn &optional FORCE-ALL)" t nil)

;;;***

;;;### (autoloads (ecb-show-help) "ecb/ecb-help" "ecb/ecb-help.el"
;;;;;;  (21487 63349 0 0))
;;; Generated autoloads from ecb/ecb-help.el

(autoload 'ecb-show-help "ecb/ecb-help" "\
Shows the online help of ECB in Info or HTML-format.
The format depends on the setting in `ecb-show-help-format'. If called with
prefix argument, i.e. if FORMAT is not nil then the user is prompted to choose
the format of the help (Info or Html).

If an error about not finding the needed help-file occurs please take a look
at the options `ecb-help-info-start-file' and `ecb-help-html-start-file'!

Note: If you got ECB as a standard XEmacs-package maybe the
HTML-online-documentation is not included.

\(fn &optional FORMAT)" t nil)

;;;***

;;;### (autoloads nil "ecb/ecb-util" "ecb/ecb-util.el" (21487 63349
;;;;;;  0 0))
;;; Generated autoloads from ecb/ecb-util.el

(defconst ecb-running-xemacs (featurep 'xemacs))

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-packages-of-type el-get-update-all
;;;;;;  el-get-version) "el-get/el-get" "el-get/el-get.el" (21487
;;;;;;  47172 0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (21414 19262 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (exec-path-from-shell-initialize exec-path-from-shell-copy-env
;;;;;;  exec-path-from-shell-copy-envs) "exec-path-from-shell/exec-path-from-shell"
;;;;;;  "exec-path-from-shell/exec-path-from-shell.el" (21488 4086
;;;;;;  0 0))
;;; Generated autoloads from exec-path-from-shell/exec-path-from-shell.el

(autoload 'exec-path-from-shell-copy-envs "exec-path-from-shell/exec-path-from-shell" "\
Set the environment variables with NAMES from the user's shell.

As a special case, if the variable is $PATH, then `exec-path' and
`eshell-path-env' are also set appropriately.  The result is an alist,
as described by `exec-path-from-shell-getenvs'.

\(fn NAMES)" nil nil)

(autoload 'exec-path-from-shell-copy-env "exec-path-from-shell/exec-path-from-shell" "\
Set the environment variable $NAME from the user's shell.

As a special case, if the variable is $PATH, then `exec-path' and
`eshell-path-env' are also set appropriately.  Return the value
of the environment variable.

\(fn NAME)" t nil)

(autoload 'exec-path-from-shell-initialize "exec-path-from-shell/exec-path-from-shell" "\
Initialize environment from the user's shell.

The values of all the environment variables named in
`exec-path-from-shell-variables' are set from the corresponding
values used in the user's shell.

\(fn)" t nil)

;;;***

;;;### (autoloads (flycheck-define-error-level flycheck-info flycheck-def-option-var
;;;;;;  flycheck-def-config-file-var global-flycheck-mode flycheck-mode)
;;;;;;  "flycheck/flycheck" "flycheck/flycheck.el" (21487 47172 0
;;;;;;  0))
;;; Generated autoloads from flycheck/flycheck.el

(autoload 'flycheck-mode "flycheck/flycheck" "\
Minor mode for on-the-fly syntax checking.

When called interactively, toggle `flycheck-mode'.  With prefix
ARG, enable `flycheck-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `flycheck-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `flycheck-mode'.
Otherwise behave as if called interactively.

In `flycheck-mode' the buffer is automatically syntax-checked
using the first suitable syntax checker from `flycheck-checkers'.
Use `flycheck-select-checker' to select a checker for the current
buffer manually.

\\{flycheck-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-flycheck-mode nil "\
Non-nil if Global-Flycheck mode is enabled.
See the command `global-flycheck-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-flycheck-mode'.")

(custom-autoload 'global-flycheck-mode "flycheck/flycheck" nil)

(autoload 'global-flycheck-mode "flycheck/flycheck" "\
Toggle Flycheck mode in all buffers.
With prefix ARG, enable Global-Flycheck mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Flycheck mode is enabled in all buffers where
`flycheck-mode-on-safe' would do it.
See `flycheck-mode' for more information on Flycheck mode.

\(fn &optional ARG)" t nil)

(autoload 'flycheck-def-config-file-var "flycheck/flycheck" "\
Define SYMBOL as config file variable for CHECKER, with default FILE-NAME.

SYMBOL is declared as customizable, buffer-local variable using
`defcustom', to provide a configuration file for the given syntax
CHECKER.  CUSTOM-ARGS are forwarded to `defcustom'.

FILE-NAME is the initial value of the new variable.  If omitted,
the default value is nil.

Use this together with the `config-file' form in the `:command'
argument to `flycheck-define-checker'.

\(fn SYMBOL CHECKER &optional FILE-NAME &rest CUSTOM-ARGS)" nil t)

(put 'flycheck-def-config-file-var 'lisp-indent-function '3)

(autoload 'flycheck-def-option-var "flycheck/flycheck" "\
Define SYMBOL as option variable with INIT-VALUE for CHECKER.

SYMBOL is declared as customizable variable, buffer-local
variable using `defcustom', to provide an option for the given
syntax CHECKER.  INIT-VALUE is the initial value of the variable,
and DOCSTRING is its docstring.  CUSTOM-ARGS are forwarded to
`defcustom'.

Use this together with the `option', `option-list' and
`option-flag' forms in the `:command' argument to
`flycheck-define-checker'.

\(fn SYMBOL INIT-VALUE CHECKER DOCSTRING &rest CUSTOM-ARGS)" nil t)

(put 'flycheck-def-option-var 'lisp-indent-function '3)

(put 'flycheck-def-option-var 'doc-string-elt '4)

(autoload 'flycheck-info "flycheck/flycheck" "\
Open the Flycheck manual.

\(fn)" t nil)

(autoload 'flycheck-define-error-level "flycheck/flycheck" "\
Define a new error LEVEL with PROPERTIES.

The following PROPERTIES constitute an error level:

`:severity SEVERITY'
     A number denoting the severity of this level.  The higher
     the number, the more severe is this level compared to other
     levels.  Defaults to 0.

     The severity is used by `flycheck-error-level-<' to
     determine the ordering of errors according to their levels.

`:overlay-category CATEGORY'
     A symbol denoting the overlay category to use for error
     highlight overlays for this level.  See Info
     node `(elisp)Overlay Properties' for more information about
     overlay categories.

     A category for an error level overlay should at least define
     the `face' property, for error highlighting.  Other useful
     properties for error level categories are `priority' to
     influence the stacking of multiple error level overlays, and
     `help-echo' to define a default error messages for errors
     without messages.

`:fringe-bitmap BITMAP'
     A fringe bitmap symbol denoting the bitmap to use for fringe
     indicators for this level.  See Info node `(elisp)Fringe
     Bitmaps' for more information about fringe bitmaps,
     including a list of built-in fringe bitmaps.

`:fringe-face FACE'
     A face symbol denoting the face to use for fringe indicators
     for this level.

`:error-list-face FACE'
     A face symbol denoting the face to use for messages of this
     level in the error list.  See `flycheck-list-errors'.

\(fn LEVEL &rest PROPERTIES)" nil nil)

(put 'flycheck-define-error-level 'lisp-indent-function '1)

;;;***

;;;### (autoloads (git-commit-mode) "git-modes/git-commit-mode" "git-modes/git-commit-mode.el"
;;;;;;  (21487 47170 0 0))
;;; Generated autoloads from git-modes/git-commit-mode.el

(autoload 'git-commit-mode "git-modes/git-commit-mode" "\
Major mode for editing git commit messages.

This mode helps with editing git commit messages both by
providing commands to do common tasks, and by highlighting the
basic structure of and errors in git commit messages.

\(fn)" t nil)

(dolist (pattern '("/COMMIT_EDITMSG\\'" "/NOTES_EDITMSG\\'" "/MERGE_MSG\\'" "/TAG_EDITMSG\\'" "/PULLREQ_EDITMSG\\'")) (add-to-list 'auto-mode-alist (cons pattern 'git-commit-mode)))

;;;***

;;;### (autoloads (git-rebase-mode) "git-modes/git-rebase-mode" "git-modes/git-rebase-mode.el"
;;;;;;  (21414 20450 0 0))
;;; Generated autoloads from git-modes/git-rebase-mode.el

(autoload 'git-rebase-mode "git-modes/git-rebase-mode" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/git-rebase-todo\\'" . git-rebase-mode))

;;;***

;;;### (autoloads (gitattributes-mode) "git-modes/gitattributes-mode"
;;;;;;  "git-modes/gitattributes-mode.el" (21414 20450 0 0))
;;; Generated autoloads from git-modes/gitattributes-mode.el

(autoload 'gitattributes-mode "git-modes/gitattributes-mode" "\
A major mode for editing .gitattributes files.
\\{gitattributes-mode-map}

\(fn)" t nil)

(dolist (pattern '("/\\.gitattributes\\'" "/\\.git/info/attributes\\'" "/git/attributes\\'")) (add-to-list 'auto-mode-alist (cons pattern #'gitattributes-mode)))

;;;***

;;;### (autoloads (gitconfig-mode) "git-modes/gitconfig-mode" "git-modes/gitconfig-mode.el"
;;;;;;  (21414 20450 0 0))
;;; Generated autoloads from git-modes/gitconfig-mode.el

(autoload 'gitconfig-mode "git-modes/gitconfig-mode" "\
A major mode for editing .gitconfig files.

\(fn)" t nil)

(dolist (pattern '("/\\.gitconfig\\'" "/\\.git/config\\'" "/git/config\\'" "/\\.gitmodules\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitconfig-mode)))

;;;***

;;;### (autoloads (gitignore-mode) "git-modes/gitignore-mode" "git-modes/gitignore-mode.el"
;;;;;;  (21414 20450 0 0))
;;; Generated autoloads from git-modes/gitignore-mode.el

(autoload 'gitignore-mode "git-modes/gitignore-mode" "\
A major mode for editing .gitignore files.

\(fn)" t nil)

(dolist (pattern (list "/\\.gitignore\\'" "/\\.git/info/exclude\\'" "/git/ignore\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitignore-mode)))

;;;***

;;;### (autoloads (magit-run-gitk magit-run-git-gui-blame magit-run-git-gui
;;;;;;  magit-add-change-log-entry-other-window magit-add-change-log-entry
;;;;;;  magit-init magit-branch-manager magit-wazzup magit-diff-stash
;;;;;;  magit-diff-unstaged magit-diff-staged magit-diff-working-tree
;;;;;;  magit-diff magit-interactive-resolve magit-save-index magit-cherry
;;;;;;  magit-reflog-head magit-reflog magit-file-log magit-log-long-ranged
;;;;;;  magit-log-long magit-log-ranged magit-log magit-bisect-run
;;;;;;  magit-bisect-skip magit-bisect-bad magit-bisect-good magit-bisect-reset
;;;;;;  magit-bisect-start magit-submodule-sync magit-submodule-init
;;;;;;  magit-submodule-update-init magit-submodule-update magit-stash-snapshot
;;;;;;  magit-stash magit-delete-tag magit-tag magit-commit-squash
;;;;;;  magit-commit-fixup magit-commit-reword magit-commit-extend
;;;;;;  magit-commit-amend magit-commit magit-push magit-push-tags
;;;;;;  magit-pull magit-remote-update magit-fetch-current magit-fetch
;;;;;;  magit-reset-working-tree magit-reset-head-hard magit-reset-head
;;;;;;  magit-interactive-rebase magit-rename-remote magit-remove-remote
;;;;;;  magit-add-remote magit-rename-branch magit-delete-branch
;;;;;;  magit-create-branch magit-checkout magit-merge-abort magit-merge
;;;;;;  magit-show magit-dired-jump magit-unstage-all magit-stage-all
;;;;;;  magit-status magit-show-commit magit-git-command) "magit/magit"
;;;;;;  "magit/magit.el" (21487 47172 0 0))
;;; Generated autoloads from magit/magit.el

(autoload 'magit-git-command "magit/magit" "\
Execute a Git subcommand asynchronously, displaying the output.
With a prefix argument run Git in the root of the current
repository.  Non-interactively run Git in DIRECTORY with ARGS.

\(fn ARGS DIRECTORY)" t nil)

(autoload 'magit-show-commit "magit/magit" "\
Show information about COMMIT.

\(fn COMMIT &optional NOSELECT)" t nil)

(autoload 'magit-status "magit/magit" "\
Open a Magit status buffer for the Git repository containing DIR.
If DIR is not within a Git repository, offer to create a Git
repository in DIR.

Interactively, a prefix argument means to ask the user which Git
repository to use even if `default-directory' is under Git
control.  Two prefix arguments means to ignore `magit-repo-dirs'
when asking for user input.

Depending on option `magit-status-buffer-switch-function' the
status buffer is shown in another window (the default) or the
current window.  Non-interactively optional SWITCH-FUNCTION
can be used to override this.

\(fn DIR &optional SWITCH-FUNCTION)" t nil)

(autoload 'magit-stage-all "magit/magit" "\
Add all remaining changes in tracked files to staging area.
With a prefix argument, add remaining untracked files as well.
\('git add [-u] .').

\(fn &optional INCLUDING-UNTRACKED)" t nil)

(autoload 'magit-unstage-all "magit/magit" "\
Remove all changes from staging area.
\('git reset --mixed HEAD').

\(fn)" t nil)

(autoload 'magit-dired-jump "magit/magit" "\
Visit current item in dired.
With a prefix argument, visit in other window.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'magit-show "magit/magit" "\
Display and select a buffer containing FILE as stored in REV.

Insert the contents of FILE as stored in the revision REV into a
buffer.  Then select the buffer using `pop-to-buffer' or with a
prefix argument using `switch-to-buffer'.  Non-interactivity use
SWITCH-FUNCTION to switch to the buffer, if that is nil simply
return the buffer, without displaying it.

\(fn REV FILE &optional SWITCH-FUNCTION)" t nil)

(autoload 'magit-merge "magit/magit" "\
Merge REVISION into the current 'HEAD', leaving changes uncommitted.
With a prefix argument, skip editing the log message and commit.
\('git merge [--no-commit] REVISION').

\(fn REVISION &optional DO-COMMIT)" t nil)

(autoload 'magit-merge-abort "magit/magit" "\
Abort the current merge operation.

\(fn)" t nil)

(autoload 'magit-checkout "magit/magit" "\
Switch 'HEAD' to REVISION and update working tree.
Fails if working tree or staging area contain uncommitted changes.
If REVISION is a remote branch, offer to create a local tracking branch.
\('git checkout [-b] REVISION').

\(fn REVISION)" t nil)

(autoload 'magit-create-branch "magit/magit" "\
Switch 'HEAD' to new BRANCH at revision PARENT and update working tree.
Fails if working tree or staging area contain uncommitted changes.
\('git checkout -b BRANCH REVISION').

\(fn BRANCH PARENT)" t nil)

(autoload 'magit-delete-branch "magit/magit" "\
Delete the BRANCH.
If the branch is the current one, offers to switch to `master' first.
With prefix, forces the removal even if it hasn't been merged.
Works with local or remote branches.
\('git branch [-d|-D] BRANCH' or 'git push <remote-part-of-BRANCH> :refs/heads/BRANCH').

\(fn BRANCH &optional FORCE)" t nil)

(autoload 'magit-rename-branch "magit/magit" "\
Rename branch OLD to NEW.
With prefix, forces the rename even if NEW already exists.
\('git branch [-m|-M] OLD NEW').

\(fn OLD NEW &optional FORCE)" t nil)

(autoload 'magit-add-remote "magit/magit" "\
Add the REMOTE and fetch it.
\('git remote add REMOTE URL').

\(fn REMOTE URL)" t nil)

(autoload 'magit-remove-remote "magit/magit" "\
Delete the REMOTE.
\('git remote rm REMOTE').

\(fn REMOTE)" t nil)

(autoload 'magit-rename-remote "magit/magit" "\
Rename remote OLD to NEW.
\('git remote rename OLD NEW').

\(fn OLD NEW)" t nil)

(autoload 'magit-interactive-rebase "magit/magit" "\
Start a git rebase -i session, old school-style.

\(fn COMMIT)" t nil)

(autoload 'magit-reset-head "magit/magit" "\
Switch 'HEAD' to REVISION, keeping prior working tree and staging area.
Any differences from REVISION become new changes to be committed.
With prefix argument, all uncommitted changes in working tree
and staging area are lost.
\('git reset [--soft|--hard] REVISION').

\(fn REVISION &optional HARD)" t nil)

(autoload 'magit-reset-head-hard "magit/magit" "\
Switch 'HEAD' to REVISION, losing all changes.
Uncomitted changes in both working tree and staging area are lost.
\('git reset --hard REVISION').

\(fn REVISION)" t nil)

(autoload 'magit-reset-working-tree "magit/magit" "\
Revert working tree and clear changes from staging area.
\('git reset --hard HEAD').

With a prefix arg, also remove untracked files.
With two prefix args, remove ignored files as well.

\(fn &optional ARG)" t nil)

(autoload 'magit-fetch "magit/magit" "\
Fetch from REMOTE.

\(fn REMOTE)" t nil)

(autoload 'magit-fetch-current "magit/magit" "\
Run fetch for default remote.

If there is no default remote, ask for one.

\(fn)" t nil)

(autoload 'magit-remote-update "magit/magit" "\
Update all remotes.

\(fn)" t nil)

(autoload 'magit-pull "magit/magit" "\
Run git pull.

If there is no default remote, the user is prompted for one and
its values is saved with git config.  If there is no default
merge branch, the user is prompted for one and its values is
saved with git config.  With a prefix argument, the default
remote is not used and the user is prompted for a remote.  With
two prefix arguments, the default merge branch is not used and
the user is prompted for a merge branch.  Values entered by the
user because of prefix arguments are not saved with git config.

\(fn)" t nil)

(autoload 'magit-push-tags "magit/magit" "\
Push tags to a remote repository.

Push tags to the current branch's remote.  If that isn't set push
to \"origin\" or if that remote doesn't exit but only a single
remote is defined use that.  Otherwise or with a prefix argument
ask the user what remote to use.

\(fn)" t nil)

(autoload 'magit-push "magit/magit" "\
Push the current branch to a remote repository.

This command runs the `magit-push-remote' hook.  By default that
means running `magit-push-dwim'.  So unless you have customized
the hook this command behaves like this:

With a single prefix argument ask the user what branch to push
to.  With two or more prefix arguments also ask the user what
remote to push to.  Otherwise use the remote and branch as
configured using the Git variables `branch.<name>.remote' and
`branch.<name>.merge'.  If the former is undefined ask the user.
If the latter is undefined push without specifing the remote
branch explicitly.

Also see option `magit-set-upstream-on-push'.

\(fn)" t nil)

(autoload 'magit-commit "magit/magit" "\
Create a new commit on HEAD.
With a prefix argument amend to the commit at HEAD instead.
\('git commit [--amend]').

\(fn &optional AMENDP)" t nil)

(autoload 'magit-commit-amend "magit/magit" "\
Amend the last commit.
\('git commit --amend').

\(fn)" t nil)

(autoload 'magit-commit-extend "magit/magit" "\
Amend the last commit, without editing the message.
With a prefix argument do change the committer date, otherwise
don't.  The option `magit-commit-extend-override-date' can be
used to inverse the meaning of the prefix argument.
\('git commit --no-edit --amend [--keep-date]').

\(fn &optional OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-reword "magit/magit" "\
Reword the last commit, ignoring staged changes.

With a prefix argument do change the committer date, otherwise
don't.  The option `magit-commit-rewrite-override-date' can be
used to inverse the meaning of the prefix argument.

Non-interactively respect the optional OVERRIDE-DATE argument
and ignore the option.

\('git commit --only --amend').

\(fn &optional OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-fixup "magit/magit" "\
Create a fixup commit.
With a prefix argument the user is always queried for the commit
to be fixed.  Otherwise the current or marked commit may be used
depending on the value of option `magit-commit-squash-commit'.
\('git commit [--no-edit] --fixup=COMMIT').

\(fn &optional COMMIT)" t nil)

(autoload 'magit-commit-squash "magit/magit" "\
Create a squash commit.
With a prefix argument the user is always queried for the commit
to be fixed.  Otherwise the current or marked commit may be used
depending on the value of option `magit-commit-squash-commit'.
\('git commit [--no-edit] --fixup=COMMIT').

\(fn &optional COMMIT FIXUP)" t nil)

(autoload 'magit-tag "magit/magit" "\
Create a new tag with the given NAME at REV.
With a prefix argument annotate the tag.
\('git tag [--annotate] NAME REV').

\(fn NAME REV &optional ANNOTATE)" t nil)

(autoload 'magit-delete-tag "magit/magit" "\
Delete the tag with the given NAME.
\('git tag -d NAME').

\(fn NAME)" t nil)

(autoload 'magit-stash "magit/magit" "\
Create new stash of working tree and staging area named DESCRIPTION.
Working tree and staging area revert to the current 'HEAD'.
With prefix argument, changes in staging area are kept.
\('git stash save [--keep-index] DESCRIPTION')

\(fn DESCRIPTION)" t nil)

(autoload 'magit-stash-snapshot "magit/magit" "\
Create new stash of working tree and staging area; keep changes in place.
\('git stash save \"Snapshot...\"; git stash apply stash@{0}')

\(fn)" t nil)

(autoload 'magit-submodule-update "magit/magit" "\
Update the submodule of the current git repository.
With a prefix arg, do a submodule update --init.

\(fn &optional INIT)" t nil)

(autoload 'magit-submodule-update-init "magit/magit" "\
Update and init the submodule of the current git repository.

\(fn)" t nil)

(autoload 'magit-submodule-init "magit/magit" "\
Initialize the submodules.

\(fn)" t nil)

(autoload 'magit-submodule-sync "magit/magit" "\
Synchronizes submodule's remote URL configuration.

\(fn)" t nil)

(autoload 'magit-bisect-start "magit/magit" "\
Start a bisect session.

Bisecting a bug means to find the commit that introduced it.
This command starts such a bisect session by asking for a know
good and a bad commit.  To move the session forward use the
other actions from the bisect popup (\\<magit-status-mode-map>\\[magit-key-mode-popup-bisecting]).

\(fn BAD GOOD)" t nil)

(autoload 'magit-bisect-reset "magit/magit" "\
After bisecting cleanup bisection state and return to original HEAD.

\(fn)" t nil)

(autoload 'magit-bisect-good "magit/magit" "\
While bisecting, mark the current commit as good.
Use this after you have asserted that the commit does not contain
the bug in question.

\(fn)" t nil)

(autoload 'magit-bisect-bad "magit/magit" "\
While bisecting, mark the current commit as bad.
Use this after you have asserted that the commit does contain the
bug in question.

\(fn)" t nil)

(autoload 'magit-bisect-skip "magit/magit" "\
While bisecting, skip the current commit.
Use this if for some reason the current commit is not a good one
to test.  This command lets Git choose a different one.

\(fn)" t nil)

(autoload 'magit-bisect-run "magit/magit" "\
Bisect automatically by running commands after each step.

\(fn CMDLINE)" t nil)

(autoload 'magit-log "magit/magit" "\


\(fn &optional RANGE)" t nil)

(autoload 'magit-log-ranged "magit/magit" "\


\(fn RANGE)" t nil)

(autoload 'magit-log-long "magit/magit" "\


\(fn &optional RANGE)" t nil)

(autoload 'magit-log-long-ranged "magit/magit" "\


\(fn RANGE)" t nil)

(autoload 'magit-file-log "magit/magit" "\
Display the log for the currently visited file or another one.
With a prefix argument show the log graph.

\(fn FILE &optional USE-GRAPH)" t nil)

(autoload 'magit-reflog "magit/magit" "\
Display the reflog of the current branch.
With a prefix argument another branch can be chosen.

\(fn REF)" t nil)

(autoload 'magit-reflog-head "magit/magit" "\
Display the HEAD reflog.

\(fn)" t nil)

(autoload 'magit-cherry "magit/magit" "\
Show commits in a branch that are not merged in the upstream branch.

\(fn HEAD UPSTREAM)" t nil)

(autoload 'magit-save-index "magit/magit" "\
Add the content of current file as if it was the index.

\(fn)" t nil)

(autoload 'magit-interactive-resolve "magit/magit" "\
Resolve a merge conflict using Ediff.

\(fn FILE)" t nil)

(autoload 'magit-diff "magit/magit" "\
Show differences between two commits.
RANGE should be a range (A..B or A...B) but can also be a single
commit.  If one side of the range is omitted, then it defaults
to HEAD.  If just a commit is given, then changes in the working
tree relative to that commit are shown.

\(fn RANGE &optional WORKING ARGS)" t nil)

(autoload 'magit-diff-working-tree "magit/magit" "\
Show differences between a commit and the current working tree.

\(fn REV)" t nil)

(autoload 'magit-diff-staged "magit/magit" "\
Show differences between the index and the HEAD commit.

\(fn)" t nil)

(autoload 'magit-diff-unstaged "magit/magit" "\
Show differences between the current working tree and index.

\(fn)" t nil)

(autoload 'magit-diff-stash "magit/magit" "\
Show changes in a stash.
A Stash consist of more than just one commit.  This command uses
a special diff range so that the stashed changes actually were a
single commit.

\(fn STASH &optional NOSELECT)" t nil)

(autoload 'magit-wazzup "magit/magit" "\
Show a list of branches in a dedicated buffer.
Unlike in the buffer created by `magit-branch-manager' each
branch can be expanded to show a list of commits not merged
into the selected branch.

\(fn BRANCH)" t nil)

(autoload 'magit-branch-manager "magit/magit" "\
Show a list of branches in a dedicated buffer.

\(fn)" t nil)

(autoload 'magit-init "magit/magit" "\
Create or reinitialize a Git repository.
Read directory name and initialize it as new Git repository.

If the directory is below an existing repository, then the user
has to confirm that a new one should be created inside; or when
the directory is the root of the existing repository, whether
it should be reinitialized.

Non-interactively DIRECTORY is always (re-)initialized.

\(fn DIRECTORY)" t nil)

(autoload 'magit-add-change-log-entry "magit/magit" "\
Find change log file and add date entry and item for current change.
This differs from `add-change-log-entry' (which see) in that
it acts on the current hunk in a Magit buffer instead of on
a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME OTHER-WINDOW)" t nil)

(autoload 'magit-add-change-log-entry-other-window "magit/magit" "\
Find change log file in other window and add entry and item.
This differs from `add-change-log-entry-other-window' (which see)
in that it acts on the current hunk in a Magit buffer instead of
on a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME)" t nil)

(autoload 'magit-run-git-gui "magit/magit" "\
Run `git gui' for the current git repository.

\(fn)" t nil)

(autoload 'magit-run-git-gui-blame "magit/magit" "\
Run `git gui blame' on the given FILENAME and COMMIT.
Interactively run it for the current file and the HEAD, with a
prefix or when the current file cannot be determined let the user
choose.  When the current buffer is visiting FILENAME instruct
blame to center around the line point is on.

\(fn COMMIT FILENAME &optional LINENUM)" t nil)

(autoload 'magit-run-gitk "magit/magit" "\
Run Gitk for the current git repository.
Without a prefix argument run `gitk --all', with
a prefix argument run gitk without any arguments.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (magit-blame-mode) "magit/magit-blame" "magit/magit-blame.el"
;;;;;;  (21414 20461 0 0))
;;; Generated autoloads from magit/magit-blame.el

(autoload 'magit-blame-mode "magit/magit-blame" "\
Display blame information inline.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "magit/magit-key-mode" "magit/magit-key-mode.el"
;;;;;;  (21414 20461 0 0))
;;; Generated autoloads from magit/magit-key-mode.el

(defvar magit-key-mode-groups '((dispatch (actions ("b" "Branching" magit-key-mode-popup-branching) ("B" "Bisecting" magit-key-mode-popup-bisecting) ("c" "Committing" magit-key-mode-popup-committing) ("d" "Diff worktree" magit-diff-working-tree) ("D" "Diff" magit-diff) ("f" "Fetching" magit-key-mode-popup-fetching) ("F" "Pulling" magit-key-mode-popup-pulling) ("g" "Refresh Buffers" magit-refresh-all) ("l" "Logging" magit-key-mode-popup-logging) ("m" "Merging" magit-key-mode-popup-merging) ("M" "Remoting" magit-key-mode-popup-remoting) ("P" "Pushing" magit-key-mode-popup-pushing) ("o" "Submoduling" magit-key-mode-popup-submodule) ("r" "Rewriting" magit-key-mode-popup-rewriting) ("R" "Rebasing" magit-rebase-step) ("s" "Show Status" magit-status) ("S" "Stage all" magit-stage-all) ("t" "Tagging" magit-key-mode-popup-tagging) ("U" "Unstage all" magit-unstage-all) ("v" "Show Commit" magit-show-commit) ("V" "Show File" magit-show) ("w" "Wazzup" magit-wazzup) ("X" "Reset worktree" magit-reset-working-tree) ("y" "Cherry" magit-cherry) ("z" "Stashing" magit-key-mode-popup-stashing) ("!" "Running" magit-key-mode-popup-running) ("$" "Show Process" magit-display-process))) (logging (man-page "git-log") (actions ("l" "Short" magit-log) ("L" "Long" magit-log-long) ("h" "Head Reflog" magit-reflog-head) ("f" "File log" magit-file-log) ("rl" "Ranged short" magit-log-ranged) ("rL" "Ranged long" magit-log-long-ranged) ("rh" "Reflog" magit-reflog)) (switches ("-m" "Only merge commits" "--merges") ("-s" "No merge commits" "--no-merges") ("-do" "Date Order" "--date-order") ("-f" "First parent" "--first-parent") ("-i" "Case insensitive patterns" "-i") ("-pr" "Pickaxe regex" "--pickaxe-regex") ("-g" "Show Graph" "--graph") ("-n" "Name only" "--name-only") ("-am" "All match" "--all-match") ("-al" "All" "--all")) (arguments ("=r" "Relative" "--relative=" read-directory-name) ("=c" "Committer" "--committer=" read-from-minibuffer) ("=>" "Since" "--since=" read-from-minibuffer) ("=<" "Before" "--before=" read-from-minibuffer) ("=a" "Author" "--author=" read-from-minibuffer) ("=g" "Grep messages" "--grep=" read-from-minibuffer) ("=G" "Grep patches" "-G" read-from-minibuffer) ("=L" "Trace evolution of line range [long log only]" "-L" magit-read-file-trace) ("=s" "Pickaxe search" "-S" read-from-minibuffer) ("=b" "Branches" "--branches=" read-from-minibuffer) ("=R" "Remotes" "--remotes=" read-from-minibuffer))) (running (actions ("!" "Git Subcommand (from root)" magit-git-command-topdir) (":" "Git Subcommand (from pwd)" magit-git-command) ("g" "Git Gui" magit-run-git-gui) ("k" "Gitk" magit-run-gitk))) (fetching (man-page "git-fetch") (actions ("f" "Current" magit-fetch-current) ("a" "All" magit-remote-update) ("o" "Other" magit-fetch)) (switches ("-p" "Prune" "--prune"))) (pushing (man-page "git-push") (actions ("P" "Push" magit-push) ("t" "Push tags" magit-push-tags)) (switches ("-f" "Force" "--force") ("-d" "Dry run" "-n") ("-u" "Set upstream" "-u"))) (pulling (man-page "git-pull") (actions ("F" "Pull" magit-pull)) (switches ("-f" "Force" "--force") ("-r" "Rebase" "--rebase"))) (branching (man-page "git-branch") (actions ("v" "Branch manager" magit-branch-manager) ("b" "Checkout" magit-checkout) ("c" "Create" magit-create-branch) ("r" "Rename" magit-rename-branch) ("k" "Delete" magit-delete-branch)) (switches ("-t" "Set upstream configuration" "--track") ("-m" "Merged to HEAD" "--merged") ("-M" "Merged to master" "--merged=master") ("-n" "Not merged to HEAD" "--no-merged") ("-N" "Not merged to master" "--no-merged=master")) (arguments ("=c" "Contains" "--contains=" magit-read-rev-with-default) ("=m" "Merged" "--merged=" magit-read-rev-with-default) ("=n" "Not merged" "--no-merged=" magit-read-rev-with-default))) (remoting (man-page "git-remote") (actions ("v" "Remote manager" magit-branch-manager) ("a" "Add" magit-add-remote) ("r" "Rename" magit-rename-remote) ("k" "Remove" magit-remove-remote))) (tagging (man-page "git-tag") (actions ("t" "Create" magit-tag) ("k" "Delete" magit-delete-tag)) (switches ("-a" "Annotate" "--annotate") ("-f" "Force" "--force") ("-s" "Sign" "--sign"))) (stashing (man-page "git-stash") (actions ("v" "View" magit-diff-stash) ("z" "Save" magit-stash) ("s" "Snapshot" magit-stash-snapshot) ("a" "Apply" magit-stash-apply) ("p" "Pop" magit-stash-pop) ("k" "Drop" magit-stash-drop)) (switches ("-k" "Keep index" "--keep-index") ("-u" "Include untracked files" "--include-untracked") ("-a" "Include all files" "--all"))) (committing (man-page "git-commit") (actions ("c" "Commit" magit-commit) ("a" "Amend" magit-commit-amend) ("e" "Extend" magit-commit-extend) ("r" "Reword" magit-commit-reword) ("f" "Fixup" magit-commit-fixup) ("s" "Squash" magit-commit-squash)) (switches ("-a" "Stage all modified and deleted files" "--all") ("-e" "Allow empty commit" "--allow-empty") ("-v" "Show diff of changes to be committed" "--verbose") ("-n" "Bypass git hooks" "--no-verify") ("-s" "Add Signed-off-by line" "--signoff") ("-R" "Claim authorship and reset author date" "--reset-author")) (arguments ("=A" "Override the author" "--author=" read-from-minibuffer) ("=S" "Sign using gpg" "--gpg-sign=" magit-read-gpg-secret-key))) (merging (man-page "git-merge") (actions ("m" "Merge" magit-merge) ("A" "Abort" magit-merge-abort)) (switches ("-ff" "Fast-forward only" "--ff-only") ("-nf" "No fast-forward" "--no-ff") ("-sq" "Squash" "--squash")) (arguments ("-st" "Strategy" "--strategy=" read-from-minibuffer))) (rewriting (actions ("b" "Begin" magit-rewrite-start) ("s" "Stop" magit-rewrite-stop) ("a" "Abort" magit-rewrite-abort) ("f" "Finish" magit-rewrite-finish) ("d" "Diff pending" magit-rewrite-diff-pending) ("*" "Set unused" magit-rewrite-set-unused) ("." "Set used" magit-rewrite-set-used))) (apply-mailbox (man-page "git-am") (actions ("J" "Apply Mailbox" magit-apply-mailbox)) (switches ("-s" "add a Signed-off-by line to the commit message" "--signoff") ("-3" "allow fall back on 3way merging if needed" "--3way") ("-k" "pass -k flag to git-mailinfo" "--keep") ("-c" "strip everything before a scissors line" "--scissors") ("-p" "pass it through git-apply" "-p") ("-r" "override error message when patch failure occurs" "--resolvemsg") ("-d" "lie about committer date" "--committer-date-is-author-date") ("-D" "use current timestamp for author date" "--ignore-date") ("-b" "pass -b flag to git-mailinfo" "--keep-non-patch")) (arguments ("=p" "format the patch(es) are in" "--patch-format=" read-from-minibuffer))) (submodule (man-page "git-submodule") (actions ("u" "Update" magit-submodule-update) ("b" "Both update and init" magit-submodule-update-init) ("i" "Init" magit-submodule-init) ("s" "Sync" magit-submodule-sync))) (bisecting (man-page "git-bisect") (actions ("b" "Bad" magit-bisect-bad) ("g" "Good" magit-bisect-good) ("k" "Skip" magit-bisect-skip) ("r" "Reset" magit-bisect-reset) ("s" "Start" magit-bisect-start) ("u" "Run" magit-bisect-run))) (diff-options (actions ("s" "Set" magit-set-diff-options) ("d" "Set default" magit-set-default-diff-options) ("c" "Save default" magit-save-default-diff-options) ("r" "Reset to default" magit-reset-diff-options) ("h" "Toggle Hunk Refinement" magit-diff-toggle-refine-hunk)) (switches ("-m" "Show smallest possible diff" "--minimal") ("-p" "Use patience diff algorithm" "--patience") ("-h" "Use histogram diff algorithm" "--histogram") ("-b" "Ignore whitespace changes" "--ignore-space-change") ("-w" "Ignore all whitespace" "--ignore-all-space") ("-W" "Show surrounding functions" "--function-context")))) "\
Holds the key, help, function mapping for the log-mode.
If you modify this make sure you reset `magit-key-mode-keymaps'
to nil.")
 (mapc (lambda (g) (eval `(autoload ',(intern (concat "magit-key-mode-popup-" (symbol-name (car g)))) "magit-key-mode" ,(concat "Key menu for " (symbol-name (car g))) t))) magit-key-mode-groups)

;;;***

;;;### (autoloads (turn-on-magit-stgit magit-stgit-mode magit-stgit-show
;;;;;;  magit-stgit-goto magit-stgit-discard magit-stgit-rebase magit-stgit-repair
;;;;;;  magit-stgit-refresh) "magit/magit-stgit" "magit/magit-stgit.el"
;;;;;;  (21487 47172 0 0))
;;; Generated autoloads from magit/magit-stgit.el

(autoload 'magit-stgit-refresh "magit/magit-stgit" "\
Refresh a StGit patch.

\(fn &optional PATCH)" t nil)

(autoload 'magit-stgit-repair "magit/magit-stgit" "\
Repair StGit metadata if branch was modified with git commands.
In the case of Git commits these will be imported as new patches
into the series.

\(fn)" t nil)

(autoload 'magit-stgit-rebase "magit/magit-stgit" "\
Rebase a StGit patch series.

\(fn)" t nil)

(autoload 'magit-stgit-discard "magit/magit-stgit" "\
Discard a StGit patch.

\(fn PATCH)" t nil)

(autoload 'magit-stgit-goto "magit/magit-stgit" "\
Set PATCH as target of StGit push and pop operations.

\(fn PATCH)" nil nil)

(autoload 'magit-stgit-show "magit/magit-stgit" "\
Show diff of a StGit patch.

\(fn PATCH)" t nil)

(autoload 'magit-stgit-mode "magit/magit-stgit" "\
StGit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-stgit "magit/magit-stgit" "\
Unconditionally turn on `magit-stgit-mode'.

\(fn)" nil nil)

(custom-add-option 'magit-mode-hook #'magit-stgit-mode)

;;;***

;;;### (autoloads (turn-on-magit-svn magit-svn-mode magit-svn-fetch-externals
;;;;;;  magit-svn-remote-update magit-svn-dcommit magit-svn-rebase
;;;;;;  magit-svn-create-tag magit-svn-create-branch magit-svn-find-rev)
;;;;;;  "magit/magit-svn" "magit/magit-svn.el" (21487 47172 0 0))
;;; Generated autoloads from magit/magit-svn.el

(autoload 'magit-svn-find-rev "magit/magit-svn" "\
Find commit for svn REVISION in BRANCH.

\(fn REV &optional BRANCH)" t nil)

(autoload 'magit-svn-create-branch "magit/magit-svn" "\
Create svn branch NAME.

\(fn NAME)" t nil)

(autoload 'magit-svn-create-tag "magit/magit-svn" "\
Create svn tag NAME.

\(fn NAME)" t nil)

(autoload 'magit-svn-rebase "magit/magit-svn" "\
Run git-svn rebase.

\(fn)" t nil)

(autoload 'magit-svn-dcommit "magit/magit-svn" "\
Run git-svn dcommit.

\(fn)" t nil)

(autoload 'magit-svn-remote-update "magit/magit-svn" "\
Run git-svn fetch.

\(fn)" t nil)

(autoload 'magit-svn-fetch-externals "magit/magit-svn" "\
Loops through all external repos found by `magit-svn-external-directories'
   and runs git svn fetch, and git svn rebase on each of them.

\(fn)" t nil)

(autoload 'magit-svn-mode "magit/magit-svn" "\
SVN support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-svn "magit/magit-svn" "\
Unconditionally turn on `magit-svn-mode'.

\(fn)" nil nil)

(custom-add-option 'magit-mode-hook #'magit-svn-mode)

;;;***

;;;### (autoloads (turn-on-magit-topgit magit-topgit-mode) "magit/magit-topgit"
;;;;;;  "magit/magit-topgit.el" (21487 47172 0 0))
;;; Generated autoloads from magit/magit-topgit.el

(autoload 'magit-topgit-mode "magit/magit-topgit" "\
Topgit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-topgit "magit/magit-topgit" "\
Unconditionally turn on `magit-topgit-mode'.

\(fn)" nil nil)

(custom-add-option 'magit-mode-hook #'magit-topgit-mode)

;;;***

;;;### (autoloads (global-magit-wip-save-mode magit-wip-save-mode)
;;;;;;  "magit/magit-wip" "magit/magit-wip.el" (21414 20461 0 0))
;;; Generated autoloads from magit/magit-wip.el

(autoload 'magit-wip-save-mode "magit/magit-wip" "\
Magit support for committing to a work-in-progress ref.

When this minor mode is turned on and a file is saved inside a
writable git repository then it is also committed to a special
work-in-progress ref.

\(fn &optional ARG)" t nil)

(defvar global-magit-wip-save-mode nil "\
Non-nil if Global-Magit-Wip-Save mode is enabled.
See the command `global-magit-wip-save-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-magit-wip-save-mode'.")

(custom-autoload 'global-magit-wip-save-mode "magit/magit-wip" nil)

(autoload 'global-magit-wip-save-mode "magit/magit-wip" "\
Toggle Magit-Wip-Save mode in all buffers.
With prefix ARG, enable Global-Magit-Wip-Save mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Magit-Wip-Save mode is enabled in all buffers where
`turn-on-magit-wip-save' would do it.
See `magit-wip-save-mode' for more information on Magit-Wip-Save mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (restore-frame maximize-frame x-restore-frame x-maximize-frame
;;;;;;  w32-restore-frame w32-maximize-frame) "maxframe/maxframe"
;;;;;;  "maxframe/maxframe.el" (21487 64513 0 0))
;;; Generated autoloads from maxframe/maxframe.el

(autoload 'w32-maximize-frame "maxframe/maxframe" "\
Maximize the current frame (windows only)

\(fn)" t nil)

(autoload 'w32-restore-frame "maxframe/maxframe" "\
Restore a minimized/maximized frame (windows only)

\(fn)" t nil)

(autoload 'x-maximize-frame "maxframe/maxframe" "\
Maximize the current frame (x or mac only)

\(fn &optional THE-FRAME)" t nil)

(autoload 'x-restore-frame "maxframe/maxframe" "\
Restore the current frame (x or mac only)

\(fn &optional THE-FRAME)" t nil)

(autoload 'maximize-frame "maxframe/maxframe" "\
Maximizes the frame to fit the display if under a windowing
system.

\(fn &optional THE-FRAME)" t nil)

(autoload 'restore-frame "maxframe/maxframe" "\
Restores a maximized frame.  See `maximize-frame'.

\(fn &optional THE-FRAME)" t nil)

(defalias 'mf 'maximize-frame)

;;;***

;;;### (autoloads (paren-backward-sexp paren-forward-sexp paren-toggle-open-paren-context
;;;;;;  paren-toggle-matching-quoted-paren paren-toggle-matching-paired-delimiter
;;;;;;  paren-deactivate paren-activate) "mic-paren/mic-paren" "mic-paren/mic-paren.el"
;;;;;;  (21488 5902 0 0))
;;; Generated autoloads from mic-paren/mic-paren.el

(autoload 'paren-activate "mic-paren/mic-paren" "\
Activate mic-paren parenthesis highlighting.
Note: This also deactivates the paren.el
and stig-paren.el packages if they are active!

The following options are available via the customize-feature:
  `paren-priority'
  `paren-overlay-priority'
  `paren-sexp-mode'
  `paren-highlight-at-point'
  `paren-highlight-offscreen'
  `paren-display-message'
  `paren-message-linefeed-display'
  `paren-message-no-match'
  `paren-message-show-linenumber'
  `paren-message-truncate-lines'
  `paren-ding-unmatched'
  `paren-delay'
  `paren-dont-touch-blink'
  `paren-match-face'
  `paren-mismatch-face'
  `paren-no-match-face'
  `paren-bind-modified-sexp-functions'

The following options are settable via toggling functions (look at the
documentation of these options for the names of these functions):
  `paren-match-quoted-paren'
  `paren-match-paired-delimiter'
  `paren-open-paren-context-backward'

\(fn)" t nil)

(autoload 'paren-deactivate "mic-paren/mic-paren" "\
Deactivate mic-paren parenthesis highlighting.

\(fn)" t nil)

(autoload 'paren-toggle-matching-paired-delimiter "mic-paren/mic-paren" "\
Toggle matching paired delimiter.
Force on with positive ARG.  Use this in mode hooks to activate or
deactivate paired delimiter matching.  If optional second argument
NO-MESSAGE is non-nil then don't display a message about the
current activation state of the paired-delimiter-matching feature.

\(fn ARG &optional NO-MESSAGE)" t nil)

(autoload 'paren-toggle-matching-quoted-paren "mic-paren/mic-paren" "\
Toggle matching quoted parens.
Force on with positive ARG.  Use this in mode hooks to activate or
deactivate quoted paren matching.  If optional second argument
NO-MESSAGE is non-nil then don't display a message about the
current activation state of the quoted-paren-matching feature.

\(fn ARG &optional NO-MESSAGE)" t nil)

(autoload 'paren-toggle-open-paren-context "mic-paren/mic-paren" "\
Toggle whether or not to determine context of the matching open-paren.
Force backward context with positive ARG.  Use this in mode-hooks.
See `paren-open-paren-context-backward'.

\(fn ARG)" t nil)

(autoload 'paren-forward-sexp "mic-paren/mic-paren" "\
Act like `forward-sexp' but also handle quoted parens.
See `paren-match-quoted-paren'.

\(fn &optional ARG)" t nil)

(autoload 'paren-backward-sexp "mic-paren/mic-paren" "\
Act like `backward-sexp' but also match quoted parens.
See `paren-match-quoted-paren'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (mc/edit-beginnings-of-lines mc/edit-ends-of-lines
;;;;;;  mc/edit-lines) "multiple-cursors/mc-edit-lines" "multiple-cursors/mc-edit-lines.el"
;;;;;;  (21488 8631 0 0))
;;; Generated autoloads from multiple-cursors/mc-edit-lines.el

(autoload 'mc/edit-lines "multiple-cursors/mc-edit-lines" "\
Add one cursor to each line of the active region.
Starts from mark and moves in straight down or up towards the
line point is on.

What is done with lines which are not long enough is governed by
`mc/edit-lines-empty-lines'.  The prefix argument ARG can be used
to override this.  If ARG is a symbol (when called from Lisp),
that symbol is used instead of `mc/edit-lines-empty-lines'.
Otherwise, if ARG negative, short lines will be ignored.  Any
other non-nil value will cause short lines to be padded.

\(fn &optional ARG)" t nil)

(autoload 'mc/edit-ends-of-lines "multiple-cursors/mc-edit-lines" "\
Add one cursor to the end of each line in the active region.

\(fn)" t nil)

(autoload 'mc/edit-beginnings-of-lines "multiple-cursors/mc-edit-lines" "\
Add one cursor to the beginning of each line in the active region.

\(fn)" t nil)

;;;***

;;;### (autoloads (mc/mark-sgml-tag-pair mc/add-cursor-on-click mc/mark-all-symbols-like-this-in-defun
;;;;;;  mc/mark-all-words-like-this-in-defun mc/mark-all-like-this-in-defun
;;;;;;  mc/mark-all-dwim mc/mark-all-like-this-dwim mc/mark-more-like-this-extended
;;;;;;  mc/mark-all-in-region-regexp mc/mark-all-in-region mc/mark-all-symbols-like-this
;;;;;;  mc/mark-all-words-like-this mc/mark-all-like-this mc/skip-to-previous-like-this
;;;;;;  mc/skip-to-next-like-this mc/unmark-previous-like-this mc/unmark-next-like-this
;;;;;;  mc/mark-previous-lines mc/mark-next-lines mc/mark-previous-symbol-like-this
;;;;;;  mc/mark-previous-word-like-this mc/mark-previous-like-this
;;;;;;  mc/mark-next-symbol-like-this mc/mark-next-word-like-this
;;;;;;  mc/mark-next-like-this) "multiple-cursors/mc-mark-more" "multiple-cursors/mc-mark-more.el"
;;;;;;  (21488 8631 0 0))
;;; Generated autoloads from multiple-cursors/mc-mark-more.el

(autoload 'mc/mark-next-like-this "multiple-cursors/mc-mark-more" "\
Find and mark the next part of the buffer matching the currently active region
With negative ARG, delete the last one instead.
With zero ARG, skip the last one and mark next.

\(fn ARG)" t nil)

(autoload 'mc/mark-next-word-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-next-symbol-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-previous-like-this "multiple-cursors/mc-mark-more" "\
Find and mark the previous part of the buffer matching the currently active region
With negative ARG, delete the last one instead.
With zero ARG, skip the last one and mark next.

\(fn ARG)" t nil)

(autoload 'mc/mark-previous-word-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-previous-symbol-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-next-lines "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-previous-lines "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/unmark-next-like-this "multiple-cursors/mc-mark-more" "\
Deselect next part of the buffer matching the currently active region.

\(fn)" t nil)

(autoload 'mc/unmark-previous-like-this "multiple-cursors/mc-mark-more" "\
Deselect prev part of the buffer matching the currently active region.

\(fn)" t nil)

(autoload 'mc/skip-to-next-like-this "multiple-cursors/mc-mark-more" "\
Skip the current one and select the next part of the buffer matching the currently active region.

\(fn)" t nil)

(autoload 'mc/skip-to-previous-like-this "multiple-cursors/mc-mark-more" "\
Skip the current one and select the prev part of the buffer matching the currently active region.

\(fn)" t nil)

(autoload 'mc/mark-all-like-this "multiple-cursors/mc-mark-more" "\
Find and mark all the parts of the buffer matching the currently active region

\(fn)" t nil)

(autoload 'mc/mark-all-words-like-this "multiple-cursors/mc-mark-more" "\


\(fn)" t nil)

(autoload 'mc/mark-all-symbols-like-this "multiple-cursors/mc-mark-more" "\


\(fn)" t nil)

(autoload 'mc/mark-all-in-region "multiple-cursors/mc-mark-more" "\
Find and mark all the parts in the region matching the given search

\(fn BEG END)" t nil)

(autoload 'mc/mark-all-in-region-regexp "multiple-cursors/mc-mark-more" "\
Find and mark all the parts in the region matching the given regexp

\(fn BEG END)" t nil)

(autoload 'mc/mark-more-like-this-extended "multiple-cursors/mc-mark-more" "\
Like mark-more-like-this, but then lets you adjust with arrows key.
The adjustments work like this:

   <up>    Mark previous like this and set direction to 'up
   <down>  Mark next like this and set direction to 'down

If direction is 'up:

   <left>  Skip past the cursor furthest up
   <right> Remove the cursor furthest up

If direction is 'down:

   <left>  Remove the cursor furthest down
   <right> Skip past the cursor furthest down

The bindings for these commands can be changed. See `mc/mark-more-like-this-extended-keymap'.

\(fn)" t nil)

(autoload 'mc/mark-all-like-this-dwim "multiple-cursors/mc-mark-more" "\
Tries to guess what you want to mark all of.
Can be pressed multiple times to increase selection.

With prefix, it behaves the same as original `mc/mark-all-like-this'

\(fn ARG)" t nil)

(autoload 'mc/mark-all-dwim "multiple-cursors/mc-mark-more" "\
Tries even harder to guess what you want to mark all of.

If the region is active and spans multiple lines, it will behave
as if `mc/mark-all-in-region'. With the prefix ARG, it will call
`mc/edit-lines' instead.

If the region is inactive or on a single line, it will behave like 
`mc/mark-all-like-this-dwim'.

\(fn ARG)" t nil)

(autoload 'mc/mark-all-like-this-in-defun "multiple-cursors/mc-mark-more" "\
Mark all like this in defun.

\(fn)" t nil)

(autoload 'mc/mark-all-words-like-this-in-defun "multiple-cursors/mc-mark-more" "\
Mark all words like this in defun.

\(fn)" t nil)

(autoload 'mc/mark-all-symbols-like-this-in-defun "multiple-cursors/mc-mark-more" "\
Mark all symbols like this in defun.

\(fn)" t nil)

(autoload 'mc/add-cursor-on-click "multiple-cursors/mc-mark-more" "\
Add a cursor where you click.

\(fn EVENT)" t nil)

(autoload 'mc/mark-sgml-tag-pair "multiple-cursors/mc-mark-more" "\
Mark the tag we're in and its pair for renaming.

\(fn)" t nil)

;;;***

;;;### (autoloads (mc/mark-pop) "multiple-cursors/mc-mark-pop" "multiple-cursors/mc-mark-pop.el"
;;;;;;  (21488 8631 0 0))
;;; Generated autoloads from multiple-cursors/mc-mark-pop.el

(autoload 'mc/mark-pop "multiple-cursors/mc-mark-pop" "\
Add a cursor at the current point, pop off mark ring and jump
to the popped mark.

\(fn)" t nil)

;;;***

;;;### (autoloads (mc/sort-regions mc/reverse-regions mc/insert-numbers)
;;;;;;  "multiple-cursors/mc-separate-operations" "multiple-cursors/mc-separate-operations.el"
;;;;;;  (21488 8631 0 0))
;;; Generated autoloads from multiple-cursors/mc-separate-operations.el

(autoload 'mc/insert-numbers "multiple-cursors/mc-separate-operations" "\
Insert increasing numbers for each cursor, starting at 0 or ARG.

\(fn ARG)" t nil)

(autoload 'mc/reverse-regions "multiple-cursors/mc-separate-operations" "\


\(fn)" t nil)

(autoload 'mc/sort-regions "multiple-cursors/mc-separate-operations" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (set-rectangular-region-anchor) "multiple-cursors/rectangular-region-mode"
;;;;;;  "multiple-cursors/rectangular-region-mode.el" (21488 8631
;;;;;;  0 0))
;;; Generated autoloads from multiple-cursors/rectangular-region-mode.el

(autoload 'set-rectangular-region-anchor "multiple-cursors/rectangular-region-mode" "\
Anchors the rectangular region at point.

Think of this one as `set-mark' except you're marking a rectangular region. It is
an exceedingly quick way of adding multiple cursors to multiple lines.

\(fn)" t nil)

;;;***

;;;### (autoloads (php-mode php-extra-constants php) "php-mode/php-mode"
;;;;;;  "php-mode/php-mode.el" (21487 47171 0 0))
;;; Generated autoloads from php-mode/php-mode.el

(let ((loads (get 'php 'custom-loads))) (if (member '"php-mode/php-mode" loads) nil (put 'php 'custom-loads (cons '"php-mode/php-mode" loads))))

(defvar php-extra-constants 'nil "\
A list of additional strings to treat as PHP constants.")

(custom-autoload 'php-extra-constants "php-mode/php-mode" t)

(add-to-list 'interpreter-mode-alist (cons "php" 'php-mode))

(autoload 'php-mode "php-mode/php-mode" "\
Major mode for editing PHP code.

\\{php-mode-map}

\(fn)" t nil)

(dolist (pattern '("\\.php[s345t]?\\'" "\\.phtml\\'" "Amkfile" "\\.amk$")) (add-to-list 'auto-mode-alist `(,pattern . php-mode) t))

;;;***

;;;### (autoloads (pkg-info-version-info pkg-info-package-version
;;;;;;  pkg-info-defining-library-version pkg-info-defining-library-original-version
;;;;;;  pkg-info-library-version pkg-info-library-original-version)
;;;;;;  "pkg-info/pkg-info" "pkg-info/pkg-info.el" (21414 22242 0
;;;;;;  0))
;;; Generated autoloads from pkg-info/pkg-info.el

(autoload 'pkg-info-library-original-version "pkg-info/pkg-info" "\
Get the original version in the header of LIBRARY.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no X-Original-Version
header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-library-version "pkg-info/pkg-info" "\
Get the version in the header of LIBRARY.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no proper header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-original-version "pkg-info/pkg-info" "\
Get the original version of the library defining FUNCTION.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-version "pkg-info/pkg-info" "\
Get the version of the library defining FUNCTION.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-package-version "pkg-info/pkg-info" "\
Get the version of an installed PACKAGE.

If SHOW is non-nil, show the version in the minibuffer.

Return the version as list, or nil if PACKAGE is not installed.

\(fn PACKAGE &optional SHOW)" t nil)

(autoload 'pkg-info-version-info "pkg-info/pkg-info" "\
Obtain complete version info for LIBRARY and PACKAGE.

LIBRARY is a symbol denoting a named feature, or a library name
as string.  PACKAGE is a symbol denoting an ELPA package.  If
omitted or nil, default to LIBRARY.

If SHOW is non-nil, show the version in the minibuffer.

When called interactively, prompt for LIBRARY.  When called
interactively with prefix argument, prompt for PACKAGE as well.

Return a string with complete version information for LIBRARY.
This version information contains the version from the headers of
LIBRARY, and the version of the installed PACKAGE, the LIBRARY is
part of.  If PACKAGE is not installed, or if the PACKAGE version
is the same as the LIBRARY version, do not include a package
version.

\(fn LIBRARY &optional PACKAGE SHOW)" t nil)

;;;***

;;;### (autoloads (pyflakes) "pyflakes/pyflakes" "pyflakes/pyflakes.el"
;;;;;;  (21488 3201 0 0))
;;; Generated autoloads from pyflakes/pyflakes.el

(autoload 'pyflakes "pyflakes/pyflakes" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (pymacs-apply pymacs-call pymacs-exec pymacs-eval
;;;;;;  pymacs-autoload pymacs-load) "pymacs/pymacs" "pymacs/pymacs.el"
;;;;;;  (21488 3242 0 0))
;;; Generated autoloads from pymacs/pymacs.el

(autoload 'pymacs-load "pymacs/pymacs" "\
Import the Python module named MODULE into Emacs.
Each function in the Python module is made available as an Emacs function.
The Lisp name of each function is the concatenation of PREFIX with
the Python name, in which underlines are replaced by dashes.  If PREFIX is
not given, it defaults to MODULE followed by a dash.
If NOERROR is not nil, do not raise error when the module is not found.

\(fn MODULE &optional PREFIX NOERROR)" t nil)

(autoload 'pymacs-autoload "pymacs/pymacs" "\
Pymacs's equivalent of the standard emacs facility `autoload'.
Define FUNCTION to autoload from Python MODULE using PREFIX.
If PREFIX is not given, it defaults to MODULE followed by a dash.
Optional DOCSTRING documents FUNCTION until it gets loaded.
INTERACTIVE is normally the argument to the function `interactive',
t means `interactive' without arguments, nil means not interactive,
which is the default.

\(fn FUNCTION MODULE &optional PREFIX DOCSTRING INTERACTIVE)" nil nil)

(autoload 'pymacs-eval "pymacs/pymacs" "\
Compile TEXT as a Python expression, and return its value.

\(fn TEXT)" t nil)

(autoload 'pymacs-exec "pymacs/pymacs" "\
Compile and execute TEXT as a sequence of Python statements.
This functionality is experimental, and does not appear to be useful.

\(fn TEXT)" t nil)

(autoload 'pymacs-call "pymacs/pymacs" "\
Return the result of calling a Python function FUNCTION over ARGUMENTS.
FUNCTION is a string denoting the Python function, ARGUMENTS are separate
Lisp expressions, one per argument.  Immutable Lisp constants are converted
to Python equivalents, other structures are converted into Lisp handles.

\(fn FUNCTION &rest ARGUMENTS)" nil nil)

(autoload 'pymacs-apply "pymacs/pymacs" "\
Return the result of calling a Python function FUNCTION over ARGUMENTS.
FUNCTION is a string denoting the Python function, ARGUMENTS is a list of
Lisp expressions.  Immutable Lisp constants are converted to Python
equivalents, other structures are converted into Lisp handles.

\(fn FUNCTION ARGUMENTS)" nil nil)

;;;***

;;;### (autoloads (rm-mouse-drag-region rm-kill-ring-save rm-kill-region
;;;;;;  rm-exchange-point-and-mark rm-set-mark rm-example-picture-mode-bindings)
;;;;;;  "rect-mark/rect-mark" "rect-mark/rect-mark.el" (21488 6051
;;;;;;  0 0))
;;; Generated autoloads from rect-mark/rect-mark.el
 (define-key ctl-x-map "r\C-@" 'rm-set-mark)
 (define-key ctl-x-map [?r ?\C-\ ] 'rm-set-mark)
 (define-key ctl-x-map "r\C-x" 'rm-exchange-point-and-mark)
 (define-key ctl-x-map "r\C-w" 'rm-kill-region)
 (define-key ctl-x-map "r\M-w" 'rm-kill-ring-save)
 (define-key global-map [S-down-mouse-1] 'rm-mouse-drag-region)

(autoload 'rm-example-picture-mode-bindings "rect-mark/rect-mark" "\
Example rect-mark keyboard and mouse bindings for picture mode.

\(fn)" nil nil)

(autoload 'rm-set-mark "rect-mark/rect-mark" "\
Set mark like `set-mark-command' but anticipates a rectangle.
This arranges for the rectangular region between point and mark
to be highlighted using the same face that is used to highlight
the region in `transient-mark-mode'.  This special state lasts only
until the mark is deactivated, usually by executing a text-modifying
command like \\[kill-rectangle], by inserting text, or by typing \\[keyboard-quit].

With optional argument FORCE, arrange for tabs to be expanded and
for spaces to inserted as necessary to keep the region perfectly
rectangular.  This is the default in `picture-mode'.

\(fn FORCE)" t nil)

(autoload 'rm-exchange-point-and-mark "rect-mark/rect-mark" "\
Like `exchange-point-and-mark' but treats region as a rectangle.
See `rm-set-mark' for more details.

With optional argument FORCE, tabs are expanded and spaces are
inserted as necessary to keep the region perfectly rectangular.
This is the default in `picture-mode'.

\(fn FORCE)" t nil)

(autoload 'rm-kill-region "rect-mark/rect-mark" "\
Like kill-rectangle except the rectangle is also saved in the kill ring.
Since rectangles are not ordinary text, the killed rectangle is saved
in the kill ring as a series of lines, one for each row of the rectangle.
The rectangle is also saved as the killed rectangle so it is available for
insertion with yank-rectangle.

\(fn START END)" t nil)

(autoload 'rm-kill-ring-save "rect-mark/rect-mark" "\
Copies the region like rm-kill-region would but the rectangle isn't killed.

\(fn START END)" t nil)

(autoload 'rm-mouse-drag-region "rect-mark/rect-mark" "\
Highlight a rectangular region of text as the the mouse is dragged over it.
This must be bound to a button-down mouse event.

\(fn START-EVENT)" t nil)

;;;***

;;;### (autoloads (web-mode) "web-mode/web-mode" "web-mode/web-mode.el"
;;;;;;  (21487 47171 0 0))
;;; Generated autoloads from web-mode/web-mode.el

(autoload 'web-mode "web-mode/web-mode" "\
Major mode for editing web templates.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("autopair/autopair-tests.el" "blank-mode/blank-mode-autoloads.el"
;;;;;;  "blank-mode/blank-mode-pkg.el" "bm/bm-tests.el" "cedet/cedet-build.el"
;;;;;;  "cedet/cedet-devel-load.el" "cedet/cedet-ediff.el" "cedet/cedet-emacs-merge.el"
;;;;;;  "cedet/cedet-remove-builtin.el" "cedet/cedet-update-changelog.el"
;;;;;;  "cedet/cedet-update-version.el" "color-theme/color-theme-autoloads.el"
;;;;;;  "dash/dash-functional.el" "dash/dash.el" "dirtree/dirtree.el"
;;;;;;  "doremi-cmd/doremi-cmd-autoloads.el" "doremi-cmd/doremi-cmd-pkg.el"
;;;;;;  "doremi/doremi-autoloads.el" "doremi/doremi-pkg.el" "ecb/ecb-advice-test.el"
;;;;;;  "ecb/ecb-analyse.el" "ecb/ecb-autogen.el" "ecb/ecb-autoloads.el"
;;;;;;  "ecb/ecb-buffertab.el" "ecb/ecb-cedet-wrapper.el" "ecb/ecb-common-browser.el"
;;;;;;  "ecb/ecb-compatibility.el" "ecb/ecb-compilation.el" "ecb/ecb-create-layout.el"
;;;;;;  "ecb/ecb-cycle.el" "ecb/ecb-eshell.el" "ecb/ecb-examples.el"
;;;;;;  "ecb/ecb-face.el" "ecb/ecb-file-browser.el" "ecb/ecb-jde.el"
;;;;;;  "ecb/ecb-layout-defs.el" "ecb/ecb-layout.el" "ecb/ecb-method-browser.el"
;;;;;;  "ecb/ecb-mode-line.el" "ecb/ecb-multiframe.el" "ecb/ecb-navigate.el"
;;;;;;  "ecb/ecb-semantic-wrapper.el" "ecb/ecb-semantic.el" "ecb/ecb-speedbar.el"
;;;;;;  "ecb/ecb-symboldef.el" "ecb/ecb-tod.el" "ecb/ecb-upgrade.el"
;;;;;;  "ecb/ecb-winman-support.el" "ecb/silentcomp.el" "ecb/tree-buffer.el"
;;;;;;  "el-get/el-get-autoloads.el" "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "epl/epl.el"
;;;;;;  "f/f.el" "magit/magit-autoloads.el" "multiple-cursors/mc-cycle-cursors.el"
;;;;;;  "multiple-cursors/mc-hide-unmatched-lines-mode.el" "multiple-cursors/multiple-cursors-core.el"
;;;;;;  "multiple-cursors/multiple-cursors-pkg.el" "multiple-cursors/multiple-cursors.el"
;;;;;;  "php-mode/php-mode-test.el" "pyflakes/pyflakes-autoloads.el"
;;;;;;  "pyflakes/pyflakes-pkg.el" "s/s.el" "simp/simp-autoloads.el"
;;;;;;  "simp/simp-pkg.el" "simp/simp-project-files.el" "simp/simp-project-git.el"
;;;;;;  "simp/simp-project-ibuffer.el" "simp/simp-project-rgrep.el"
;;;;;;  "simp/simp-project-root-dired.el" "simp/simp-project-with-bookmarks.el"
;;;;;;  "simp/simp-project.el" "simp/simp.el" "web-mode/wfs-mode.el")
;;;;;;  (21488 8631 764103 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
