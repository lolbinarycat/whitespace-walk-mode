(defun left-char-over-whitespace ()
  (interactive)
  (left-char)
  (if (member (char-before) whitespace-walk-spacechars)
      (left-char-over-whitespace)))

(defun right-char-over-whitespace ()
  (interactive)
  (right-char)
  (if (member (char-after) whitespace-walk-spacechars)
       (right-char-over-whitespace)))
    
(define-minor-mode whitespace-walk-mode
  "move over whitespace as if it wasn't there."
  :lighter " SpW"
  :keymap (make-sparse-keymap)
  (define-key whitespace-walk-mode-map (kbd "<left>") 'left-char-over-whitespace)
  (define-key whitespace-walk-mode-map (kbd "<right>") 'right-char-over-whitespace)
  (make-variable-buffer-local
   (defvar whitespace-walk-spacechars '(32 9)
     "List of charachters to skip over.")))
