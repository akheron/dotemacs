(require 'python)

(add-hook 'python-mode-hook
  #'(lambda ()
      (define-key python-mode-map "\C-m" 'newline-and-indent)
      (define-key python-mode-map (kbd "C-c C-;") 'python-indent-shift-left)
      (define-key python-mode-map (kbd "C-c C-:") 'python-indent-shift-right)
      (define-key python-mode-map (kbd "C-c C-c") 'comment-region)
      (define-key python-mode-map (kbd "C-c C-u") 'uncomment-region)
      (define-key python-mode-map (kbd "C-c C-n") 'flycheck-next-error)
      (define-key python-mode-map (kbd "C-c C-p") 'flycheck-prev-error)
      (setq flycheck-flake8rc "~/.emacs-config/config/flake8.ini")
      (setq flycheck-python-flake8-executable
            (concat virtualenv-dir "/bin/flake8"))
      (electric-indent-local-mode -1)
      (subword-mode)
      (which-function-mode)))
