(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'Info-default-directory-list "~/.emacs.d/elisp-info")  


(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-tty-dark)

(add-to-list 'load-path "~/.emacs.d/youdao.el-master")
(require 'youdao)
(setf youdao-key-from "youdaodao") ;; 有道提供的key-from
(setf youdao-key "60588129") ;; 有道提供的API key
(global-set-key (kbd "C-c t") 'youdao-translate-word)



(add-hook 'emacs-lisp-mode-hook 'linum-mode)

(load "global.el")
(load "myC.el")
(load "myAutoComple.el")
(load "myCedet.el")
(load "myYasnippet.el")
(load "myCommand.el")
(load "myHideShow.el")




;============================================================
;全屏函数
(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
			 (if (equal 'fullboth current-value)
			     (if (boundp 'old-fullscreen) old-fullscreen nil)
			   (progn (setq old-fullscreen current-value)
				  'fullboth)))))
(global-set-key [f11] 'toggle-fullscreen)






