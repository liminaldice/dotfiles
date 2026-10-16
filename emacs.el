;; Backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Custom
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

;; Startup
(add-to-list 'default-frame-alist '(background-color . "#1C1C1F"))

;; Theme
(load-theme 'doom-Iosvkem t)
(add-to-list 'default-frame-alist
             '(font . "CaskaydiaCove Nerd Font-16"))
(setq scroll-step 3)
(display-time)
(global-display-line-numbers-mode t)
(line-number-mode 1)
(setq display-line-numbers-type 'absolute)
(setq inhibit-startup-screen t)
(scroll-bar-mode -1)
(tool-bar-mode 0)
(menu-bar-mode -1)
(vertico-mode 1)
(require 'spaceline-config)
(spaceline-spacemacs-theme)
(auto-fill-mode t)
(show-paren-mode 1)
(setq ring-bell-function 'ignore)

;; Keybinds
(keymap-global-set "C-c p" 'xah-select-text-in-quote)
(keymap-global-set "C-c d" 'duplicate-line)
(keymap-global-set "M-n" 'forward-paragraph)
(keymap-global-set "M-p" 'backward-paragraph)
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "M-p") nil)
  (define-key org-mode-map (kbd "M-n") nil))

; Evil
(setq evil-want-keybinding nil)
(evil-mode 1)
(evil-commentary-mode)
(evil-collection-init)
(evil-set-leader 'nil (kbd "<SPC>"))
(evil-define-key 'normal 'global (kbd "<leader>fs") 'save-buffer)
(evil-define-key 'normal 'global (kbd "<leader>xe") 'eval-last-sexp)
(evil-define-key 'normal 'global (kbd "<leader>d") 'ido-dired)
(evil-define-key 'normal 'global (kbd "<leader>b") 'ido-switch-buffer)
(evil-define-key 'normal 'global (kbd "<leader>ie") 'ido-find-file)
(evil-define-key 'normal 'global (kbd "<leader>xk") 'kill-buffer)
(evil-define-key 'normal 'global (kbd "<leader>c") 'compile)
(evil-define-key 'normal 'global (kbd "<leader>x1") 'delete-other-windows)

; Godot
(add-hook 'gdscript-mode-hook 'eglot-ensure)

; Extra
(defun xah-select-text-in-quote ()
  "Select text between the nearest left and right delimiters.
Delimiters here includes QUOTATION MARK, GRAVE ACCENT, and most commonly used Unicode matching brackets.
Does not include APOSTROPHE.
This command ignores nesting. For example, if text is
「(a(b)c▮)」
the selected char is 「c」, not 「a(b)c」.

URL `http://xahlee.info/emacs/emacs/emacs_select_quote_text.html'
Created: 2020-11-24
Version: 2026-07-09"
  (interactive)
  (let ((xskipChars "^`\"“”()[]{}<>＜＞（）［］｛｝⦅⦆〚〛⦃⦄‹›«»「」〈〉《》【】〔〕⦗⦘『』〖〗〘〙｢｣⟦⟧⟨⟩⟪⟫⟮⟯⟬⟭⌈⌉⌊⌋⦇⦈⦉⦊❛❜❝❞❨❩❪❫❴❵❬❭❮❯❰❱"))
    (skip-chars-backward xskipChars)
    (push-mark (point) t t)
    (skip-chars-forward xskipChars)))

(require 'recentf)
(recentf-mode 1)
