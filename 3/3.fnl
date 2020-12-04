(let [tbl {}]
  (each [line (io.lines "./data.txt")]
    (table.insert tbl line))
  (local trees {})
  (for [i 0 (- (length tbl) 1)]
    (if (= (string.sub (. tbl (+ i 1)) (+ (% (* i 3) (length (. tbl 1))) 1) (+ (% (* i 3) (length (. tbl 1))) 1)) "#")
        (table.insert trees "tree")))
  (print "amout of trees: " (length trees)))
