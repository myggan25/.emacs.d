;;For setting backspace when usin ssh solaris
(normal-erase-is-backspace-mode 0)

;;Show column number
(column-number-mode t)

;;Show parenteses when matching
(show-paren-mode t)

;;Marmalade
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
