;;===========Global shortcuts

;För att använda C-u som prefix-key
(global-unset-key (kbd "\C-u"))
(global-unset-key (kbd "\M-u"))
(global-set-key (kbd "\C-u") 'Control-X-prefix)
(global-set-key (kbd "\C-u 4") 'ctl-x-4-map)
(global-set-key (kbd "\C-u 5") 'ctl-x-5-map)
(global-set-key (kbd "\C-u 6") 'ctl-x-6-map)
(global-set-key (kbd "\C-u v") 'vc-prefix-map)
(global-set-key (kbd "\M-u") 'execute-extended-command)


;Kommandon sätts med C-x som prefix-key för att hamna i ctrl-x-map

(global-set-key (kbd "\C-x C-o") 'other-window)
(global-set-key (kbd "\C-x C-u") 'undo)
(global-set-key [delete]  'delete-char)


;För att inte kunna använda C-x som prefix-key
;(global-unset-key "\C-x")
;(global-unset-key "\M-x")
;(global-unset-key (kbd "\C-x 4"))
;(global-unset-key (kbd "\C-x 5"))
;(global-unset-key (kbd "\C-x 6"))
;(global-unset-key (kbd "\C-x v"))
