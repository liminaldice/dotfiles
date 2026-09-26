;;;;;;;;; CONFIG ;;;;;;;;
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

;;;;;;;;; MELPA ;;;;;;;;;
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;;;;;;;; GUI ;;;;;;;;;
(electric-pair-mode t)
(show-paren-mode t)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(require 'ido)
(ido-mode t)

;;;;;;;;; BACKUPS ;;;;;;;;;
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;;;;;;;;; THEME ;;;;;;;;;
(load-theme 'modus-vivendi t)
(setq inhibit-startup-screen t)
(line-number-mode 1)
(setq display-line-numbers-type 'absolute)
(global-display-line-numbers-mode t)
(display-time)
(setq scroll-step 3)
(add-to-list 'default-frame-alist
	     '(font . "Liberation Mono-16"))
(global-visual-line-mode t)

;;;;;;;;; BINDS ;;;;;;;;;
(keymap-global-set "M-n" 'forward-paragraph)
(keymap-global-set "M-p" 'backward-paragraph)
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "M-p") nil)
  (define-key org-mode-map (kbd "M-n") nil))
(keymap-global-set "C-c d" 'duplicate-line)
(keymap-global-set "C-c c" 'compile)
(windmove-default-keybindings)
(setq org-replace-disputed-keys t)


