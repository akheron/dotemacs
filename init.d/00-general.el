;; Muistilappu:
;;
;; set-buffer-file-coding-system
;;

(add-to-list 'load-path "~/.emacs-config/lib/")

;; Preferences
(setq inhibit-startup-message 1)
(setq make-backup-files nil)
(setq confirm-kill-emacs 'y-or-n-p)
(setq tab-width 8)

;; Global modes
(global-font-lock-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(and (functionp 'tool-bar-mode) (tool-bar-mode -1))
(and (functionp 'scroll-bar-mode) (scroll-bar-mode -1))
(menu-bar-mode -1)
(transient-mark-mode -1)
(mouse-avoidance-mode 'jump)
(subword-mode)

;; Disable abbrev-mode
(setq-default abbrev-mode nil)

;; Open links in Google Chrome
(setq browse-url-browser-function 'browse-url-generic)
(setq browse-url-generic-program "chromium")

;; Find executables in ~/local/bin
(setq exec-path (cons "~/local/bin" exec-path))

;; Fix dead keys
(require 'iso-transl)

;; Save Customize variables to a separate file
(setq custom-file "~/.emacs-config/custom.el")
(load custom-file :noerror)
