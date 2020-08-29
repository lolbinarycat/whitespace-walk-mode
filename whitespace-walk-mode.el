(defun left-char-over-whitespace ()
  (interactive)
  (let (pchar (preceding-char))
    (left-char)
    (if (= pchar 32)
        (left-char-over-whitespace))))



(define-minor-mode whitespace-walk-mode
  "move over whitespace as if it wasn't there."
  :lighter " SpW")     
