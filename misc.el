;;Visa inte emacs startupmeddelande
(setq inhibit-startup-message t)

;;Sätt om yes och no till y och n
(fset 'yes-or-no-p 'y-or-n-p)

;;For setting backspace when using ssh solaris
(normal-erase-is-backspace-mode 0)

;; Gör att både rad- och kolumnnummer visas i statusraden.
(setq line-number-mode t)
(setq column-number-mode t)

;;Show parenteses when matching
(show-paren-mode t)

;;Dölj menyraden i emacs. Kan vara trevligt när man lärt sig många 
;;kortkommandon. Rekommenderas inte att användas av nybörjare.
;(menu-bar-mode -1)

;;Dölj rullningslisten. Rullningslisten kan vara bra att ha om man inte 
;;använder sig av kortkommandon. 
;(scroll-bar-mode -1)

;;Se till att ha rätt teckentabell som standard. Latin-1 tillåter svenska 
;;tecken att läsas och skrivas. Hoppar man över denna rad så kommer emacs
;;att varna när man sparar filen första gången.
(set-language-environment "UTF-8")

;;Ställ in så att emacs visar vilket område som är markerat.
(transient-mark-mode 1)

;;Lägg till information i statusraden. I detta fallet visar vi vilken dag,
;;vilket datum och vad klockan är. Mitt på statusraden.
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)

;;Rulla raderna. Gör så att raderna rullar mer intuitivt i emacs.
(setq scroll-step 1)
(setq scroll-conservatively 1)
(setq next-screen-context-lines 2)

;;Starta emacs med 2 vertikala fönster. Det vänstra med kolumnbredden 80 
;;tecken 
;(split-window-vertically 15)

;;Starta emacs-server. Emacsservern gör det möjligt att öppna filer direkt
;;till en buffert från ett skalfönster. Detta gör man genom att använda
;;kommandot:
;;
;;emacsclient filnamn &
;;
;;Använder man inte emacsclient någonting så kan man kommentera ut raden
;;under. 
;(server-start)

;; Binder Shift+Tab till ordkomplettering.  Det är en jättesmart
;; funktion i emacs som alltför få känner till.
(global-set-key [S-iso-lefttab] 'dabbrev-completion)


;;Org mode
 (add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)
