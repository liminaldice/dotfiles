;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("720838034f1dd3b3da66f6bd4d053ee67c93a747b219d1c546c41c4e425daf93"
     "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19"
     default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Direct all backup files to a centralized folder
(setq backup-directory-alist
      `(("." . ,(expand-file-name "backups" user-emacs-directory))))

(auto-fill-mode t)
(show-paren-mode 1)
(setq ring-bell-function 'ignore)

;; CUSTOM
;; keep a list of recently opened files
(require 'recentf)
(recentf-mode 1)

(scroll-bar-mode -1)
(tool-bar-mode 0)
(menu-bar-mode -1)

(setq inhibit-startup-screen t)

(line-number-mode 1)
(setq display-line-numbers-type 'absolute)
(global-display-line-numbers-mode t)


;; Display current time
(display-time)

;; Smooth scroll mode
(setq scroll-step 3)


;; Extra bindings
(keymap-global-set "M-n" 'forward-paragraph)
(keymap-global-set "M-p" 'backward-paragraph)
;; Org mode clash
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "M-p") nil)
  (define-key org-mode-map (kbd "M-n") nil))

(load-theme 'doom-Iosvkem)

(add-to-list 'default-frame-alist
             '(font . "Liberation Mono-16"))

;; ;; Xah-fly-keys

;; (add-to-list 'load-path "~/.emacs.d/lisp/")

;; (require 'xah-fly-keys)

;; ;; specify a layout
;; (xah-fly-keys-set-layout "qwerty")

;; other popular values
;; adnw (German)
;; azerty
;; azerty-be
;; bepo
;; colemak
;; colemak-dh
;; dvorak
;; neo2 (German)
;; norman
;; programer-dvorak
;; pt-nativo (Brazil)
;; qwerty-abnt (Brazil)
;; qwerty-no (Norwegian)
;; qwerty-se (Swedish)
;; qwertz
;; russian
;; workman
;; and more

;; (xah-fly-keys 1)

;; (progn
;;   (defun xah-fly-keys-escape ()
;;     (interactive)
;;     (when (region-active-p)
;;       (deactivate-mark))
;;     (when (active-minibuffer-window)
;;       (abort-recursive-edit)))

;;   (define-key xah-fly-command-map (kbd "<escape>")     'xah-fly-keys-escape))

;; (progn
;;   (defvar xah-fly-keys-fast-keyseq-timeout 200)

;;   (defun xah-fly-keys-tty-ESC-filter (map)
;;     (if (and (equal (this-single-command-keys) [?\e])
;;              (sit-for (/ xah-fly-keys-fast-keyseq-timeout 1000.0)))
;;         [escape] map))

;;   (defun xah-fly-keys-lookup-key (map key)
;;     (catch 'found
;;       (map-keymap (lambda (k b) (if (equal key k) (throw 'found b))) map)))

;;   (defun xah-fly-keys-catch-tty-ESC ()
;;     "Setup key mappings of current terminal to turn a tty's ESC into
;; `escape'."
;;     (when (memq (terminal-live-p (frame-terminal)) '(t pc))
;;       (let ((esc-binding (xah-fly-keys-lookup-key input-decode-map ?\e)))
;;         (define-key input-decode-map
;;           [?\e] `(menu-item "" ,esc-binding :filter xah-fly-keys-tty-ESC-filter)))))

;;   (xah-fly-keys-catch-tty-ESC)

;;   (define-key key-translation-map (kbd "ESC") (kbd "<escape>")))


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

(keymap-global-set "C-c p" 'xah-select-text-in-quote)
(keymap-global-set "C-c d" 'duplicate-line)
