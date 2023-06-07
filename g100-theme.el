;;; Version: 1.0
;;; Commentary:
;;; A theme called g100
;;; Code:

(deftheme g100 "DOCSTRING for sami")

(defface color-evil-state-emacs-face nil
  "Evil Mode Emacs State Face"
  :group 'faces)

(defface color-evil-state-insert-face nil
  "Evil Mode Insert State Face"
  :group 'faces)

(defface color-evil-state-visual-face nil
  "Evil Mode Visual Stace Face"
  :group 'faces)

(defface color-evil-state-normal-face nil
  "Evil Mode Normal Stace Face"
  :group 'faces)
;; (let ((color-bg "#161616")
(let ((color-bg "#111111")
      (color-fg "#202d3a")
      (color-fg1 "#cad1d9")
      (color-light "#f4f4f4")
      (color-comment "#585858")
      (color-1 "#A1A7AD")
      (color-2 "#21262c")
      (color-string "#8a8a8a")
      (color-8 "#222222")
      (secondary "#be95ff")
      (primary "#0f62fe")
      (color-16 "#262626")
      (color-12 "#121212")
      (color-13 "#191919")
      (success "#42be65")
      (error "#fa4d56")
      (warning "#f1c21b")
      (color-darker "#2b3136"))

  (custom-theme-set-faces 'g100
			  `(bold ((t (:weight normal :bold t))))
			  `(error ((t (:weight normal :foreground ,error))))
			  `(warning ((t (:weight normal :background ,color-16 :foreground ,warning))))
			  `(success ((t (:weight normal :foreground ,success))))
			  `(italic ((t (:weight normal :italic t))))
			  `(default ((t (:foreground ,color-light :background ,color-bg
						     :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal
						     :width normal :foundry "nil"
						     :family "PragmataPro Mono Liga" :height 120 :stipple nil))))
						     ;; :family "Menlo" :height 120 :stipple nil))))
			  `(cursor ((t (:background ,color-light :foreground ,color-light))))
			  `(fringe ((t (:background ,color-bg))))
			  `(highlight ((t (:underline nil :background ,color-bg))))
			  ;; `(highlight ((t (:weight normal :underline nil :background ,color-13))))
			  ;; `(mode-line ((t (:foreground ,color-light :background ,primary :overline nil :underline nil :box (:line-width 4 :color ,primary)))))
			  `(mode-line ((t (:foreground ,color-fg1 :background ,color-16 :overline nil :underline nil :box (:line-width 4 :color ,color-16)))))
			  `(mode-line-inactive ((t (:foreground ,color-fg1 :background ,color-12 :overline nil :underline nil :box (:line-width 4 :color ,color-12)))))
			  ;; `(mode-line-inactive ((t (:foreground ,color-fg1 :background ,color-13 :overline nil :underline nil :box (:line-width 4 :color ,color-12)))))
			  ;; `(region ((t (:background ,color-13))))
			  `(region ((t (:background ,color-16))))
			  `(shadow ((t (:weight normal :underline nil :foreground ,color-fg1))))
			  `(secondary-selection ((t (:background ,color-1))))
			  `(font-lock-builtin-face ((t (:foreground ,color-light)))) ;; main color block
			  `(font-lock-comment-face ((t (:foreground ,color-comment :inherit italic))))
			  `(font-lock-function-name-face ((t (:inherit font-lock-builtin-face))))

			  `(font-lock-keyword-face ((t (:foreground ,color-light :inherit bold))))

			  `(font-lock-string-face ((t (:foreground ,secondary :inherit bold))))
			  `(font-lock-type-face ((t (:inherit font-lock-builtin-face))))

			  `(font-lock-constant-face ((t (:foreground ,secondary))))
			  ;; `(font-lock-constant-face ((t (:foreground ,color-light))))
			  `(font-lock-variable-name-face ((t (:foreground ,color-light))))
			  `(minibuffer-prompt ((t (:foreground ,color-light :inherit bold))))
			  `(font-lock-warning-face ((t (:foreground ,warning :inherit bold t))))

			  ;; Org
			  `(org-table ((t (:foreground ,color-light))))

			  ;; Ansible
			  `(ansible-section-face ((t (:inherit font-lock-function-name-face))))
			  `(ansible-task-label-face ((t (:inherit font-lock-string-face))))

			  ;; Vertico orderless
			  `(orderless-match-face-0 ((t :foreground ,warning :inherit bold)))
			  `(orderless-match-face-1 ((t :foreground ,error :inherit bold)))
			  `(orderless-match-face-2 ((t :foreground ,success :inherit bold)))
			  `(orderless-match-face-3 ((t :foreground ,success :inherit bold)))
			  `(vertico-current ((t (:inherit bold :foreground ,color-light :background ,color-16))))
			  `(vertico-quick1 ((t (:inherit orderless-match-face-0))))
			  `(vertico-quick2 ((t (:inherit orderless-match-face-1))))

			  ;; Window Divider
			  `(window-divider ((t :foreground ,color-16)))
			  `(window-divider-first-pixel ((t :foreground ,color-16)))
			  `(window-divider-last-pixel ((t :foreground ,color-16)))
			  `(vertical-border ((t :background ,color-bg :foreground ,color-16)))

			  ;; EVIL in mode line
			  `(color-evil-state-emacs-face  ((t (:bold t :background ,color-fg1 :foreground ,color-light :overline nil :underline nil :box (:line-width 4 :color ,color-fg1)))))
			  `(color-evil-state-insert-face ((t (:bold t :background ,secondary :foreground ,color-16 :overline nil :underline nil :box (:line-width 4 :color ,secondary)))))
			  `(color-evil-state-visual-face ((t (:bold t :background ,error :foreground ,color-light :overline nil :underline nil :box (:line-width 4 :color ,error)))))
			  `(color-evil-state-normal-face ((t (:bold t :background ,color-fg1 :foreground ,color-darker :overline nil :underline nil :box (:line-width 4 :color ,color-fg1)))))

			  ;; Evil cursor
			  `(evil-emacs-state-cursor ((t (:inherit (cursor error)))))
			  `(evil-insert-state-cursor ((t (:inherit (cursor error)))))
			  `(evil-visual-state-cursor ((t (:inherit (cursor error)))))
			  `(evil-normal-state-cursor ((t (:inherit (cursor error)))))
			  
			  ;; Tree-sitter
			  `(tree-sitter-hl-face:method.call ((t (:inherit font-lock-function-name-face))))
			  `(tree-sitter-hl-face:function.call ((t (:inherit font-lock-function-name-face))))
			  `(tree-sitter-hl-face:operator ((t (:inherit default))))
			  `(tree-sitter-hl-face:type.builtin ((t (:inherit font-lock-keyword-face))))
			  `(tree-sitter-hl-face:number ((t (:inherit highlight-numbers-number))))
			  `(tree-sitter-hl-face:variable.special ((t (:inherit font-lock-keyword-face))))

			  ;; Magit
			  `(magit-branch-current ((t :foreground ,color-light :box t)))
			  `(magit-branch-local ((t :foreground ,color-light)))
			  `(magit-branch-remote ((t :foreground ,color-light)))
			  `(magit-branch-remote-head ((t :foreground ,color-light :box t)))
			  `(magit-branch-upstream ((t :foreground ,color-light :inherit italic :box t)))
			  `(magit-branch-warning ((t :inherit warning)))
			  `(magit-cherry-equivalent ((t :background ,color-bg :foreground ,color-light)))
			  `(magit-cherry-unmatched ((t :background ,color-bg :foreground ,color-light)))
			  `(magit-dimmed ((t :foreground ,color-comment)))
			  `(magit-filename ((t :foreground ,color-fg1)))
			  `(magit-hash ((t :inherit shadow)))
			  `(magit-head ((t :inherit magit-branch-local)))
			  `(magit-header-line ((t :inherit bold :foreground ,color-light)))
			  `(magit-header-line-key ((t :foreground ,color-light)))
			  `(magit-header-line-log-select ((t :inherit bold :foreground ,color-light)))
			  `(magit-keyword ((t :foreground ,color-light)))
			  `(magit-keyword-squash ((t :inherit bold :foreground ,color-light)))
			  `(magit-log-author ((t :foreground ,color-light)))
			  `(magit-log-date ((t :inherit shadow)))
			  `(magit-log-graph ((t :foreground ,color-comment)))
			  `(magit-mode-line-process ((t :inherit bold :foreground ,color-light)))
			  `(magit-mode-line-process-error ((t :inherit bold :foreground ,color-light)))
			  `(magit-process-ng ((t :inherit error)))
			  `(magit-process-ok ((t :inherit success)))
			  `(magit-diff-context-highlight ((t (:foreground ,color-light  :background ,color-bg))))
			  `(magit-diff-added-highlight ((t (:background ,color-bg :foreground ,success))))
			  `(magit-diff-removed-highlight ((t (:background ,color-bg :foreground ,error))))
			  `(magit-diff-added ((t (:background ,color-bg :foreground ,success))))
			  `(magit-diff-removed ((t (:background ,color-bg :foreground ,error))))
			  `(magit-diffstat-added ((t (:background ,color-bg :foreground ,success))))
			  `(magit-diffstat-removed ((t (:background ,color-bg :foreground ,error))))
			  `(magit-reflog-amend ((t :background ,color-bg :foreground ,color-light)))
			  `(magit-reflog-checkout ((t :background ,color-bg :foreground ,color-light)))
			  `(magit-reflog-cherry-pick ((t :background ,color-bg :foreground ,color-light)))
			  `(magit-reflog-commit ((t :background ,color-bg :foreground ,color-light)))
			  `(magit-reflog-merge ((t :background ,color-bg :foreground ,color-light)))
			  `(magit-reflog-other ((t :background ,color-bg :foreground ,color-light)))
			  `(magit-reflog-rebase ((t :background ,color-bg :foreground ,color-light)))
			  `(magit-reflog-remote ((t :background ,color-bg :foreground ,color-light)))
			  `(magit-reflog-reset ((t :background ,color-bg :foreground ,color-light)))
			  `(magit-refname ((t :inherit shadow)))
			  `(magit-refname-pullreq ((t :inherit shadow)))
			  `(magit-refname-stash ((t :inherit shadow)))
			  `(magit-refname-wip ((t :inherit shadow)))
			  `(magit-section ((t :background ,color-fg :foreground ,color-light)))
			  `(magit-section-heading ((t :inherit bold :foreground ,color-light)))
			  `(magit-section-highlight ((t :background ,color-bg)))
			  `(magit-sequence-drop ((t :foreground ,color-light)))
			  `(magit-sequence-exec ((t :foreground ,color-light)))
			  `(magit-sequence-head ((t :foreground ,color-light)))
			  `(magit-sequence-onto ((t :inherit shadow)))
			  `(magit-sequence-part ((t :foreground ,color-light)))
			  `(magit-sequence-pick ((t :foreground ,color-light)))
			  `(magit-sequence-stop ((t :foreground ,color-light)))
			  `(magit-signature-bad ((t :inherit bold :foreground ,color-light)))
			  `(magit-signature-error ((t :foreground ,color-light)))
			  `(magit-signature-expired ((t :foreground ,color-light)))
			  `(magit-signature-expired-key ((t :foreground ,color-light)))
			  `(magit-signature-revoked ((t :foreground ,color-light)))
			  `(magit-signature-untrusted ((t :foreground ,color-light)))
			  `(magit-tag ((t :foreground ,color-light)))
			  `(magit-imerge-overriding-value ((t :inherit bold :foreground ,color-light)))

			  ;; Line numbers
			  `(line-number ((t :foreground ,color-16 :background ,color-bg)))
			  `(line-number-current-line ((t :inherit bold :foreground ,color-string :background ,color-13)))

			  ;; git-gutter
			  `(git-gutter:added ((t (:background ,success))))
			  `(git-gutter:modified ((t (:background ,warning))))
			  `(git-gutter:deleted ((t (:background ,error))))

			  ;; elfeed
			  `(elfeed-log-date-face ((t :inherit elfeed-search-date-face)))
			  `(elfeed-log-debug-level-face ((t :inherit elfeed-search-filter-face)))
			  `(elfeed-log-error-level-face ((t :inherit error)))
			  `(elfeed-log-info-level-face ((t :inherit success)))
			  `(elfeed-log-warn-level-face ((t :inherit warning)))
			  `(elfeed-search-date-face ((t :foreground ,color-light)))
			  `(elfeed-search-feed-face ((t :foreground ,color-light)))
			  `(elfeed-search-filter-face ((t :inherit bold :foreground ,color-light)))
			  `(elfeed-search-last-update-face ((t :inherit bold :foreground ,color-light)))
			  `(elfeed-search-tag-face ((t :foreground ,error)))
			  `(elfeed-search-title-face ((t :foreground ,color-light)))
			  `(elfeed-search-unread-count-face ((t :inherit bold :foreground ,color-light)))
			  `(elfeed-search-unread-title-face ((t :inherit bold :foreground ,color-light)))

			  ;; Flymake
			  `(flymake-info ((t (:foreground ,success :underline (:style wave :color ,success)))))
			  `(flymake-error ((t (:foreground ,error :underline (:style wave :color ,error)))))
			  `(flymake-warning ((t (:foreground ,warning :underline (:style wave :color ,warning)))))

			  `(flymake-infoline ((t (:inherit mode-line :foreground ,success))))
			  `(flymake-errline ((t  (:inherit mode-line :foreground ,error))))
			  `(flymake-warnline ((t (:inherit mode-line :foreground ,warning))))

			  ;; eshell
			  `(eshell-ls-archive ((t :foreground ,warning)))
			  `(eshell-ls-backup ((t :inherit shadow)))
			  `(eshell-ls-clutter ((t :inherit shadow)))
			  `(eshell-ls-directory ((t :foreground ,primary)))
			  `(eshell-ls-executable ((t :foreground ,success)))
			  `(eshell-ls-missing ((t :inherit error)))
			  `(eshell-ls-product ((t :inherit shadow)))
			  `(eshell-ls-readonly ((t :foreground ,warning)))
			  `(eshell-ls-special ((t :foreground ,error)))
			  `(eshell-ls-symlink ((t :foreground ,secondary)))
			  `(eshell-ls-unreadable ((t :inherit shadow)))
			  ;; `(eshell-prompt ((t :inherit modus-themes-prompt)))

			  ;; Dired
			  `(dired-broken-symlink ((t :foreground ,error)))
			  `(dired-directory ((t :foreground ,primary)))
			  `(dired-flagged ((t :foreground ,error)))
			  `(dired-header ((t :inherit bold)))
			  `(dired-ignored ((t :inherit shadow)))
			  `(dired-mark ((t :inherit bold)))
			  `(dired-marked ((t :inherit modus-themes-mark-sel)))
			  `(dired-perm-write ((t :inherit shadow)))
			  `(dired-symlink ((t :foreground ,secondary)))
			  `(dired-warning ((t :inherit warning)))

			  ;; lsp-ui
			  `(lsp-ui-doc-background ((t (:background ,color-12))))

			  ;; evil search and replace
			  `(isearch ((t (:background ,error :foreground ,color-16))))
			  `(isearch-group-1 ((t (:inherit isearch))))
			  `(isearch-group-2 ((t (:inherit isearch))))
			  `(match ((t (:inherit isearch))))
			  `(evil-search-highlight-persist-highlight-face ((t (:background ,warning :foreground ,color-16))))

			  ;; highlight indent
			  `(highlight-indent-guides-odd-face ((t (:background ,color-fg))))
			  `(highlight-indent-guides-even-face ((t (:background ,color-fg))))
			  `(highlight-indent-guides-character-face ((t (:foreground ,color-fg))))

			  ;; Searches
			  `(isearch-fail ((t (:inherit isearch))))
			  `(lazy-highlight ((t (:inherit isearch))))
			  `(evil-search ((t (:inherit isearch))))
			  `(evil-ex-info ((t (:inherit isearch))))
			  `(evil-ex-lazy-highlight ((t (:inherit isearch))))
			  `(evil-ex-substitute-matches ((t (:foreground ,error :weight normal :strike-through t))))
			  `(evil-ex-substitute-replacement ((t (:foreground ,success :weight normal))))

			  ;; notmuch
			  `(notmuch-crypto-decryption ((t (:inherit bold))))
			  `(notmuch-crypto-part-header ((t (:foreground ,warning))))
			  `(notmuch-crypto-signature-bad ((t (:foreground ,error))))
			  `(notmuch-crypto-signature-good ((t (:foreground ,success))))
			  `(notmuch-crypto-signature-good-key ((t (:inherit bold :foreground ,warning))))
			  `(notmuch-crypto-signature-unknown ((t (:foreground ,warning))))
			  `(notmuch-hello-logo-background ((t (:background ,color-light))))
			  `(notmuch-jump-key ((t (:inherit bold))))
			  `(notmuch-message-summary-face ((t (:foreground ,color-light :inherit bold))))
			  `(notmuch-search-count ((t (:inherit shadow))))
			  `(notmuch-search-date ((t (:foreground ,secondary))))
			  `(notmuch-search-flagged-face ((t (:foreground ,error))))
			  `(notmuch-search-matching-authors ((t (:foreground ,color-light :inherit bold))))
			  `(notmuch-search-non-matching-authors ((t (:foreground ,color-light :inherit shadow))))
			  `(notmuch-search-subject ((t (:foreground ,color-light))))

			  `(notmuch-search-unread-face ((t (:foreground ,color-light :inherit bold))))
			  `(notmuch-tag-added ((t (:underline ,secondary))))
			  `(notmuch-tag-deleted ((t (:strike-through ,error))))
			  `(notmuch-tag-face ((t (:foreground ,secondary))))
			  `(notmuch-tag-flagged ((t (:foreground ,warning))))
			  `(notmuch-tag-unread ((t (:foreground ,error))))
			  `(notmuch-tree-match-author-face ((t (:inherit notmuch-search-matching-authors))))
			  `(notmuch-tree-match-date-face ((t (:inherit notmuch-search-date))))
			  `(notmuch-tree-match-face ((t (:foreground ,color-light))))
			  `(notmuch-tree-match-tag-face ((t (:inherit notmuch-tag-face))))
			  `(notmuch-tree-no-match-face ((t (:inherit shadow))))
			  `(notmuch-tree-no-match-date-face ((t (:inherit shadow))))
			  `(notmuch-wash-cited-text ((t (:inherit bold))))
			  `(notmuch-wash-toggle-button ((t (:background ,color-16 :foreground ,color-light))))

			  ;; Delim
			  `(rainbow-delimiters-base-error-face ((t :inherit error)))
			  `(rainbow-delimiters-base-face ((t :foreground ,error)))
			  `(rainbow-delimiters-depth-1-face ((t :foreground ,error)))
			  `(rainbow-delimiters-depth-2-face ((t :foreground ,error)))
			  `(rainbow-delimiters-depth-3-face ((t :foreground ,error)))
			  `(rainbow-delimiters-depth-4-face ((t :foreground ,error)))
			  `(rainbow-delimiters-depth-5-face ((t :foreground ,error)))
			  `(rainbow-delimiters-depth-6-face ((t :foreground ,error)))
			  `(rainbow-delimiters-depth-7-face ((t :foreground ,error)))
			  `(rainbow-delimiters-depth-8-face ((t :foreground ,error)))
			  `(rainbow-delimiters-depth-9-face ((t :foreground ,error)))
			  `(rainbow-delimiters-mismatched-face ((t :inherit (bold error) :background ,color-1)))
			  `(rainbow-delimiters-unmatched-face ((t :inherit (bold error) :background ,color-1)))

			  ;; show-paren-mode
			  `(show-paren-match ((t :inherit (cursor error))))
			  `(show-paren-match-expression ((t :inherit (cursor error))))
			  `(show-paren-mismatch ((t :inherit (cursor error))))

			  ;; Package
			  `(package-description ((t :foreground ,color-light)))
			  `(package-help-section-name ((t :inherit bold)))
			  `(package-name ((t :foreground ,secondary)))
			  `(package-status-available ((t :foreground ,success)))
			  `(package-status-avail-obso ((t :inherit error)))
			  `(package-status-built-in ((t :foreground ,color-string)))
			  `(package-status-dependency ((t :foreground ,color-1)))
			  `(package-status-disabled ((t :inherit error :strike-through t)))
			  `(package-status-from-source ((t :foreground ,color-light)))
			  `(package-status-held ((t :foreground ,warning)))
			  `(package-status-incompat ((t :inherit error :strike-through t)))
			  `(package-status-installed ((t :foreground ,color-string)))
			  `(package-status-new ((t :inherit success)))
			  `(package-status-unsigned ((t :inherit error)))

			  ;; tab-line-mode
			  `(tab-line ((t :background ,color-bg :height 1 :box (:line-width -1 :color ,color-bg))))
			  `(tab-line-tab ((t :foreground ,color-fg1 :background ,color-bg :box (:line-width 5 :color ,color-bg))))
			  `(tab-line-close-highlight ((t :foreground ,error)))
			  `(tab-line-highlight ((t :weight normal :underline nil :background ,color-13)))
			  `(tab-line-tab-current ((t :foreground ,color-fg1 :background ,color-darker :box (:line-width 5 :color ,color-darker))))
			  `(tab-line-tab-inactive ((t :foreground ,color-fg1 :background ,color-bg :box (:line-width 5 :color ,color-bg))))
			  `(tab-line-tab-inactive-alternate ((t :inherit tab-line-tab-inactive)))
			  `(tab-line-tab-modified ((t :foreground ,warning)))

			  ;; Eglot, Eldoc
			  `(eldoc-box-body ((t :background ,color-13 :foreground ,color-fg1)))
			  `(eldoc-box-border ((t :background ,color-16)))
			  `(eglot-mode-line ((t :inherit eldoc-box-body)))
			  `(eglot-diagnostic-tag-unnecessary-face ((t :inherit eldoc-box-body)))

			  ;; Company
			  `(company-box-background ((t (:background ,color-16))))
			  `(company-preview-common ((t (:foreground unspecified :background ,color-13))))
			  `(company-scrollbar-bg ((t (:background ,color-13))))
			  `(company-scrollbar-fg ((t (:background ,color-1))))
			  `(company-tooltip ((t (:inherit default :background ,color-13))))
			  `(company-tooltip-common ((t (:foreground ,color-1 :bold t))))
			  `(company-tooltip-selection ((t (:background ,color-darker))))
			  `(company-tooltip-annotation ((t (:foreground ,color-1))))
			  `(company-template-field ((t (:foreground ,color-1 :background ,color-darker))))

			  ;; Vertico posframe
			  `(vertico-posframe ((t :background ,color-13)))
			  `(vertico-posframe-border ((t :background ,color-16)))
			  `(vertico-posframe-border-1 ((t :background ,color-13)))
			  `(vertico-posframe-border-2 ((t :background ,color-13)))
			  `(vertico-posframe-border-3 ((t :background ,color-13)))
			  `(vertico-posframe-border-4 ((t :background ,color-13)))
			  `(vertico-posframe-border-fallback ((t :background ,color-16)))

			  ;; Corfu
			  `(corfu-current ((t :background ,color-16 :foreground ,color-1)))
			  `(corfu-bar ((t :background ,color-13)))
			  `(corfu-border ((t :background ,color-16)))
			  `(corfu-default ((t :background ,color-13)))
			  `(corfu-quick1 ((t :inherit bold :background ,success)))
			  `(corfu-quick2 ((t :inherit bold :background ,warning)))

			  ;; Popup
			  `(popup-face ((t (:inherit corfu-current))))
			  `(popup-tip-face ((t (:inherit flymake-warning :background ,color-13))))
			  `(popup-isearch-match ((t (:inherit isearch))))
			  `(popup-menu-mouse-face ((t (:weight normal :underline nil :background ,color-13))))
			  `(popup-menu-selection-face ((t (:inherit flymake-warning :background ,color-darker))))
			  `(popup-summary-face ((t (:inherit popup-face :foreground ,color-1))))
			  `(popup-scroll-bar-foreground-face ((t (:inherit company-scrollbar-fg))))
			  `(popup-scroll-bar-background-face ((t (:inherit company-scrollbar-bg))))))


;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
		  (file-name-as-directory
		   (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'g100)

;;; g100-theme.el ends here
