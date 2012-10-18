;; OS X specific customizations

;; Since it's going to be there anyways... might as well.
(menu-bar-mode 1)
(scroll-bar-mode 1)

(defun finder-reveal ()
  "revealed the current file in finder"
  (interactive)
  (if (buffer-file-name)
      (ns-service-Finder-Reveal (buffer-file-name))
    (message "This buffer has no file")))

(defun delete-window-or-frame ()
  (interactive)
  (if (= 1 (count-windows))
      (delete-frame)
    (delete-window)))

(global-set-key (kbd "s-w") 'delete-window-or-frame)
(global-set-key (kbd "s-?") 'help)
