(defun left-char-over-whitespace ()
  (interactive)
  (left-char)
  (if (= 32 (char-before))
      (left-char-over-whitespace)))

(defun right-char-over-whitespace ()
  (interactive)
  (right-char)
  (if (= 32 (char-after))
      (right-char-over-whitespace)))
  

(define-minor-mode whitespace-walk-mode
  "move over whitespace as if it wasn't there."
  :lighter " SpW"
  :keymap (make-sparse-keymap)
  (define-key whitespace-walk-mode-map (kbd "<left>") 'left-char-over-whitespace)
  (define-key whitespace-walk-mode-map (kbd "<right>") 'right-char-over-whitespace))
