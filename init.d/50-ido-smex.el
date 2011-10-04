(require 'ido)
(setq ido-create-new-buffer 'always)
(setq ido-confirm-unique-completion t)
(setq ido-default-buffer-method 'selected-window)
(setq ido-use-filename-at-point nil)
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t) ; fuzzy matching
;(set-face-background 'ido-first-match "black")
;(set-face-foreground 'ido-subdir "dodger blue")
(setq ido-show-dot-for-dired nil)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is the old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)