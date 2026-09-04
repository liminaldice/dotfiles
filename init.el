;; Add custom folder to load-path for external packages - Not working
(add-to-list 'load-path (concat user-emacs-directory "lisp/"))
(load "highlight-indent-guides.el")

;; Backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Enable eglot autoshutdown when closing Emacs
(setq eglot-autoshutdown t)

;; Set up theme
(load-theme 'doom-Iosvkem t)
(global-hl-line-mode t)

;; Set up org mode to wrap paragraphs
(add-hook 'org-mode #'auto-fill-mode)

;; Highlight line with color
;; (set-face-background 'hl-line "midnight blue")
;; (set-face-background 'hl-line "cyan")

;; Default minimal interface
(scroll-bar-mode -1)
(tool-bar-mode 0)
(menu-bar-mode -1)

;; Remove greeter
(setq inhibit-startup-screen t)

;; Set up line numbers
(line-number-mode 1)
(setq display-line-numbers-type 'absolute)
(global-display-line-numbers-mode t)

;; Display current time
(display-time)

;; Smooth scroll mode
(setq scroll-step 3)

;; Company mode optimizations
(setq company-idle-delay 0.0
      company-minimum-prefix-length 1
      company-tooltip-limit 10
      company-dabbrev-downcase nil)

(setq read-process-output-max (* 1024 1024))

;; Company mode enable globally
(add-hook 'after-init-hook 'global-company-mode)

;; Extra bindings
(keymap-global-set "M-n" 'forward-paragraph)
(keymap-global-set "M-p" 'backward-paragraph)
;; Org mode clash
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "M-p") nil)
  (define-key org-mode-map (kbd "M-n") nil))

;; ;; Org roam
;; (keymap-global-set "C-c n i" 'org-roam-node-insert)
;; (keymap-global-set "C-c n f" 'org-roam-node-find)
;; (keymap-global-set "C-c n l" 'org-roam-buffer-toggle)
;; DUplicate lines
(keymap-global-set "C-c d" 'duplicate-line)
;; Multiple cursors
(keymap-global-set "C->" 'mc/mark-next-like-this)
(keymap-global-set "C-<" 'mc/mark-previous-like-this)
(keymap-global-set "C-c C-<" 'mc/mark-all-like-this)
(keymap-global-set "C-c m" 'mc/edit-lines)
;; Compile
(keymap-global-set "C-c c" 'compile)
;; Windmove
(windmove-default-keybindings)
;; Org Mode fix
(setq org-replace-disputed-keys t)

;; Langtool
(keymap-global-set "C-c 4 w" 'langtool-check)
(keymap-global-set "C-c 4 W" 'langtool-check-done)
(keymap-global-set "C-c 4 l" 'langtool-switch-default-language)
(keymap-global-set "C-c 4 4" 'langtool-show-message-at-point)
(keymap-global-set "C-c 4 c" 'langtool-interactive-correction)

;; Set up Liberation Mono font
(add-to-list 'default-frame-alist
	     '(font . "Literation Mono Nerd Font-16"))
;; Iosevka font
;; (add-to-list 'default-frame-alist
;; '(font . "Iosevka Nerd Font-16"))
;; Monocraft font
;; (add-to-list 'default-frame-alist
	     ;; '(font . "Monocraft-16"))

;; Interactive Do mode
(require 'ido)
(ido-mode t)

;; Bracket matching mode
(electric-pair-mode t)

;; Melpa package manager
(add-to-list  'package-archives '("melpa" . "https://melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0" "1ee152da54a554d3f2a634da326ba36a49ebfa838c3928c0fa546487d1ac7598" "f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33" "0c83e0b50946e39e237769ad368a08f2cd1c854ccbcd1a01d39fdce4d6f86478" "38b43b865e2be4fe80a53d945218318d0075c5e01ddf102e9bec6e90d57e2134" "576ed62a547dc6a1268735de27a32c44b15d9f2d729e491a3fc9a401037da180" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "eae4fdb41e0f4c6ac86c119d449d1184fc1209cce77c294d409c977804ca7920" "300c9134f40efe3702f3de33c390770c805cd6caa5f1384496208da886e4b652" "6fc37b4ba2234a39062c790dce74e21d5983ef84343e02a87b89763ab8fe876e" "997065ddf60843d510a4b6a9c6380543199d6a9ae33800a5ce1e9f7112047196" "d3ebccab28ecb41dfb9a97cdb90212b301f7568dc89407cd508fca2ac3d29de9" "55a6089472957a32057452dd5b2f4b72040169d1ec0fa6870b946b0476a40f81" "d6d569756b04beb0fc7c9ca83d18f61f18875849f4b9a9d34fca0b69056dc4de" "ae62fac1af292396a8e77e48435b41058fda45be24ac79fa40c89e1173b9b2d6" "b243ec44629b75034c83be3fa411662f89582223012e8f4110a82dc40bf8561a" "e8943076ae16e79e51ec3021ccc277f547216529575c369ff922cf22d870f3a9" "530e730924892af285af79d88339048da48c572a3c974882682eadb9881fb051" "28f3ac0f5fade64dc7e27abe9d32e7d85576c40940977e8e319f25055d3a28b7" "f9575ecd8da2a02c114e427f2ebb49ffee94285c5963f33a0abf357c5a33a1d9" "3799f9b2e997c7cf7d1a5d9846095c8976bce96852eda40d8bf9248157c2615f" "fb232a8ae1311f1b8acecb1f766880d12d7a01b7d8d547e7c09325a074a31237" "17570f818a8a3877994453342e3425a3b4fa4b3ebac050b4ecbbee958f1ca133" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "4990532659bb6a285fee01ede3dfa1b1bdf302c5c3c8de9fad9b6bc63a9252f7" "f4d1b183465f2d29b7a2e9dbe87ccc20598e79738e5d29fc52ec8fb8c576fcfd" "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725" "42a6583a45e0f413e3197907aa5acca3293ef33b4d3b388f54fa44435a494739" "3613617b9953c22fe46ef2b593a2e5bc79ef3cc88770602e7e569bbd71de113b" "7771c8496c10162220af0ca7b7e61459cb42d18c35ce272a63461c0fc1336015" "fffef514346b2a43900e1c7ea2bc7d84cbdd4aa66c1b51946aade4b8d343b55a" "df6dfd55673f40364b1970440f0b0cb8ba7149282cf415b81aaad2d98b0f0290" "22a0d47fe2e6159e2f15449fcb90bbf2fe1940b185ff143995cc604ead1ea171" "456697e914823ee45365b843c89fbc79191fdbaff471b29aad9dcbe0ee1d5641" "9b9d7a851a8e26f294e778e02c8df25c8a3b15170e6f9fd6965ac5f2544ef2a9" "166a2faa9dc5b5b3359f7a31a09127ebf7a7926562710367086fcc8fc72145da" "7de64ff2bb2f94d7679a7e9019e23c3bf1a6a04ba54341c36e7cf2d2e56e2bcc" "dd4582661a1c6b865a33b89312c97a13a3885dc95992e2e5fc57456b4c545176" "02d422e5b99f54bd4516d4157060b874d14552fe613ea7047c4a5cfa1288cf4f" "0d2c5679b6d087686dcfd4d7e57ed8e8aedcccc7f1a478cd69704c02e4ee36fe" "e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0" "4594d6b9753691142f02e67b8eb0fda7d12f6cc9f1299a49b819312d6addad1d" "4d5d11bfef87416d85673947e3ca3d3d5d985ad57b02a7bb2e32beaf785a100e" "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9" "088cd6f894494ac3d4ff67b794467c2aa1e3713453805b93a8bcb2d72a0d1b53" "d12b1d9b0498280f60e5ec92e5ecec4b5db5370d05e787bc7cc49eae6fb07bc0" "e8bd9bbf6506afca133125b0be48b1f033b1c8647c628652ab7a2fe065c10ef0" "77fff78cc13a2ff41ad0a8ba2f09e8efd3c7e16be20725606c095f9a19c24d3d" "0325a6b5eea7e5febae709dab35ec8648908af12cf2d2b569bedc8da0a3a81c1" "d481904809c509641a1a1f1b1eb80b94c58c210145effc2631c1a7f2e4a2fdf4" "f1e8339b04aef8f145dd4782d03499d9d716fdc0361319411ac2efc603249326" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19" "720838034f1dd3b3da66f6bd4d053ee67c93a747b219d1c546c41c4e425daf93" "f64217e4490453cac52044afb625f71a7f034f109f4bd1ed7153768a9688701c" "2493d0ad0bb94bd2ad297a6d76288751a532fd6d8d6af694ac14008caa6b7fa2" "138ed99a323c1b93c52f4b3726caf2bc634b79a76fa63a3d3aff76394db5f28f" "f1c8202c772d1de83eda4765fe21429a528a4fb350a28394d3705fe9678ed1f9" "edb8220f5c2e7fceabe0e707a978fc824e26812c2dfef4186fb2eed5e766d5e2" "5b7c9906ed176f4a461af7655e1b67f6a5e3066fd1a3c3efa06bce2ebae6d7d3" "1711947b59ea934e396f616b81f8be8ab98e7d57ecab649a97632339db3a3d19" "e7820b899036ae7e966dcaaec29fd6b87aef253748b7de09e74fdc54407a7a02" "1781e8bccbd8869472c09b744899ff4174d23e4f7517b8a6c721100288311fa5" "de8f2d8b64627535871495d6fe65b7d0070c4a1eb51550ce258cd240ff9394b0" default))
 '(highlight-indent-guides-method 'column)
 '(package-selected-packages
   '(ultra-scroll god-mode forge web-mode all-the-icons anaconda-mode astro-ts-mode company company-anaconda doom-modeline doom-themes eglot gdscript-mode golden-ratio helm langtool magit move-text multiple-cursors org-download org-roam org-roam-ui solaire-mode spacious-padding transient use-package use-proxy vterm)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(god-mode-lighter ((t (:inherit error)))))

;; Godot LSP integration
(require 'gdscript-mode)
(add-hook 'gdscript-mode-hook 'eglot-ensure)

;; Add images to files
(require 'org-download)

;; Drag-and-drop to `dired`
(add-hook 'dired-mode-hook 'org-download-enable)

;; Transient org-roam-ui component
;; (setq package-install-upgrade-built-in t)
;; (progn (unload-feature 'transient t) (require 'transient))

;; Set up Org-Roam folder
;; (setq org-roam-directory (file-truename "/home/mint/Org/Org-Roam"))

;; Org-Roam autostartup
;; (org-roam-db-autosync-mode)

;; Enable helm autocompletion framework
(require 'helm)
(helm-mode 1)

;; Global visual line
(global-visual-line-mode t)

;; End sentence with one space
(setq sentence-end-double-space nil)

;; Multiple cursors
(require 'multiple-cursors)

;; Company anaconda mode
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))

;; Hook anaconda mode
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)


;; Langtool
(setq langtool-language-tool-jar "/home/mint/opt/LanguageTool-6.6/languagetool-commandline.jar")
(require 'langtool)

;; Doom modeline
(doom-modeline-mode 1)

;; Spacious padding
(spacious-padding-mode 1)

;; Golden ratio
(golden-ratio-mode 0)


;; Whitespace mode
(whitespace-mode 0)

;; Dired copy DWIM
(setq dired-dwim-target t)

;; Highlight indent guides configuration
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(add-hook 'gdscript-mode 'highlight-indent-guides-mode)

;; Move text
(require 'move-text)
(move-text-default-bindings)

;; ASTRO
(define-derived-mode astro-mode web-mode "astro")
(setq auto-mode-alist
      (append '((".*\\.astro\\'" . astro-mode))
              auto-mode-alist))
;; Forge-magit authentication
(setq auth-sources '("~/.authinfo.gpg"))

;; Forge config
(with-eval-after-load 'magit
  (require 'forge))

;; GOD MODE
(require 'god-mode)
(god-mode)

;; God mode indicator

(setq doom-modeline-major-mode-icon t)

;; Use Escape to toggle God mode globally
(global-set-key (kbd "C-c a") 'god-mode-all)
(global-set-key (kbd "<escape>") 'god-mode-all)
(global-set-key (kbd "C-;") 'god-mode-all)



;; Explicitly force 'i' to exit God mode when inside God Mode
(define-key god-local-mode-map (kbd "i") 'god-local-mode)

;; Change cursor mode when in God mode
(defun god-mode-cursor()
  (setq cursor-type (if (or god-local-mode buffer-read-only) 'hollow 'box)))
(add-hook 'god-mode-enabled-hook #'god-mode-cursor)
(add-hook 'god-mode-disabled-hook #'god-mode-cursor)

;; God mode repeat
(define-key god-local-mode-map (kbd ".") #'repeat)
