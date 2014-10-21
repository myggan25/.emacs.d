;;Visa inte emacs startupmeddelande
(setq inhibit-startup-message t)

;;S�tt om yes och no till y och n
(fset 'yes-or-no-p 'y-or-n-p)

;;For setting backspace when using ssh solaris
(normal-erase-is-backspace-mode 0)

;; G�r att b�de rad- och kolumnnummer visas i statusraden.
(setq line-number-mode t)
(setq column-number-mode t)

;;Show parenteses when matching
(show-paren-mode t)

;;D�lj menyraden i emacs. Kan vara trevligt n�r man l�rt sig m�nga 
;;kortkommandon. Rekommenderas inte att anv�ndas av nyb�rjare.
;(menu-bar-mode -1)

;;D�lj rullningslisten. Rullningslisten kan vara bra att ha om man inte 
;;anv�nder sig av kortkommandon. 
;(scroll-bar-mode -1)

;;Se till att ha r�tt teckentabell som standard. Latin-1 till�ter svenska 
;;tecken att l�sas och skrivas. Hoppar man �ver denna rad s� kommer emacs
;;att varna n�r man sparar filen f�rsta g�ngen.
(set-language-environment "UTF-8")

;;St�ll in s� att emacs visar vilket omr�de som �r markerat.
(transient-mark-mode 1)

;;L�gg till information i statusraden. I detta fallet visar vi vilken dag,
;;vilket datum och vad klockan �r. Mitt p� statusraden.
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)

;;Rulla raderna. G�r s� att raderna rullar mer intuitivt i emacs.
(setq scroll-step 1)
(setq scroll-conservatively 1)
(setq next-screen-context-lines 2)

;;Starta emacs med 2 vertikala f�nster. Det v�nstra med kolumnbredden 80 
;;tecken 
;(split-window-vertically 15)

;;Starta emacs-server. Emacsservern g�r det m�jligt att �ppna filer direkt
;;till en buffert fr�n ett skalf�nster. Detta g�r man genom att anv�nda
;;kommandot:
;;
;;emacsclient filnamn &
;;
;;Anv�nder man inte emacsclient n�gonting s� kan man kommentera ut raden
;;under. 
;(server-start)

;; Binder Shift+Tab till ordkomplettering.  Det �r en j�ttesmart
;; funktion i emacs som alltf�r f� k�nner till.
(global-set-key [S-iso-lefttab] 'dabbrev-completion)


;;Org mode
 (add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)
