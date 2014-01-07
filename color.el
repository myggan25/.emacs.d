;; ========= Set colours ==========

;;Starta färgintenderingen direkt. Anpassar sig beroende på vilket emacs-mode
;;som filen man öppnar kommer i. Ingen färgintendering i text-mode.
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)



(defvar *bgcolor* "black") 
(defvar *fgcolor* "green")  
(defvar *status* "forest green")
(defvar *comment* "yellow")
(defvar *mark* "rgb:50/50/50")
(defvar *comment* "aquamarine")
(defvar *constant* "forestgreen")
(defvar *string* "red")

;;FÖLJANDE RADER SKA INTE ÄNDRAS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-background-color *bgcolor*)
(set-cursor-color *fgcolor*) 
(set-foreground-color *fgcolor*)

;;Ändra färgen på statusraden.
 (set-face-foreground 'mode-line *status*)
 (set-face-background 'mode-line *bgcolor*)

;;Standardbakgrund.
(set-face-background 'default *bgcolor*)

;;Standardförgrund
(set-face-foreground 'default *fgcolor*)

;;Markerad text
(set-face-background 'region "blue")
(set-face-foreground 'region "black")


(show-paren-mode 1)
;;Färgerna vid parenteskoll
(set-face-background 'show-paren-match-face "yellow")
(set-face-foreground 'show-paren-match-face "black")
(set-face-background 'show-paren-mismatch-face "red")
(set-face-foreground 'show-paren-mismatch-face "black")

 
(set-face-background 'highlight *bgcolor*)
(set-face-foreground 'highlight "lightgray")

;;För färgindentering.
(set-face-foreground 'font-lock-builtin-face *fgcolor*)
(set-face-foreground 'font-lock-builtin-face *fgcolor*)

;;Kommentarer
(set-face-foreground 'font-lock-comment-face *comment*)

;;Konstanter
(set-face-foreground 'font-lock-constant-face *constant*)

;;Funktionsnamn
(set-face-foreground 'font-lock-function-name-face "Steelblue")
(make-face-bold 'font-lock-function-name-face)

;;Nyckelord, reserverade ord
(set-face-foreground 'font-lock-keyword-face "DarkOrchid")
(make-face-bold 'font-lock-keyword-face)

;;Strängar
(set-face-foreground 'font-lock-string-face *string*) 

;;Typer etc, hit tillkommer också classer i java.
(set-face-foreground 'font-lock-type-face "Forestgreen")
(set-face-underline-p 'font-lock-type-face t)

;;Variabler
(set-face-foreground 'font-lock-variable-name-face "darkturquoise")
(make-face-bold 'font-lock-variable-name-face)

;;Varningstext
(set-face-foreground 'font-lock-warning-face "darkturquoise")
(make-face-bold 'font-lock-warning-face)
