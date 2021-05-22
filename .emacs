(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(require 'use-package)
;;---------------------------- emacs general configuation
(global-display-line-numbers-mode t) ; show line number
;; theme
(use-package atom-one-dark-theme :ensure t)
(load-theme 'atom-one-dark t)
;; tabs
(use-package centaur-tabs
  :demand
  :config
  (centaur-tabs-mode t)
  (centaur-tabs-headline-match)
  (setq centaur-tabs-height 132)
  (setq centaur-tabs-set-icons t)
  (setq centaur-tabs-plain-icons t)
  (setq centaur-tabs-gray-out-icons 'buffer)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward)
  :ensure t
  )

(windmove-default-keybindings 'meta) ;; windows move mode with S- and arrows
(use-package auto-complete :ensure t)
;; snippets
(use-package yasnippet :ensure t)
(use-package yasnippet-snippets :ensure t)
;; icons
(use-package all-the-icons :ensure t)
;; c++ configuration
;;----------------------------------------------------
;; ----------------------------------Holberton Configuration
(setq c-default-style "bsd"
      c-basic-offset 8
      tab-width 8
      indent-tabs-mode t)
(use-package whitespace
  :config
  (setq whitespace-style '(face empty lines-tail trailing))
  (global-whitespace-mode t)
)
(setq column-number-mode t)
;; -------------------------------------------------------
