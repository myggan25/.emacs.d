;;;; .emacs
;;;; Created by: Robin Abrahamsson
;;
;; This file was created for the purpose to work well
;; with my modified version of the keyboardlayout sv_dvorak
;; along with the keyboard TypeMatrix.

;;============General initializing
;;The root directory is ~/.emacs.d for all files specified in this file
(add-to-list 'load-path "~/.emacs.d/init")

;;============Windows specific commands
(cond ((eq system-type 'windows-nt)
 (message "customizing GNU Emacs for Windows")
 ; anything special about Windows begins here
 (if (file-exists-p "~/.emacs.d/init/windows_specific.el")
 (load "windows_specific"))

 ; and ends here
 )
;;============Linux specific commands
 ((eq system-type 'linux)
 (message "customizing GNU Emacs for Linux")
 ; anything special about Linux begins here
 null

 ; and ends here
 ))

(message "customizing GNU Emacs for non OS specifc stuff")

;;============Set colors

(if (file-exists-p "~/.emacs.d/init/color.el")
 (load "color"))

;;============Set keyboard Shortcuts

(if (file-exists-p "~/.emacs.d/init/shortcuts.el")
 (load "shortcuts"))

;;insert new entries here

;;============Miscellaneous

(if (file-exists-p "~/.emacs.d/init/misc.el")
 (load "misc"))

;;============Test stuff

(if (file-exists-p "~/.emacs.d/init/test.el")
 (load "test"))
