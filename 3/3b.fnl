(fn number-of-trees [slope-x slope-y]
  (let [tbl {}]
  (each [line (io.lines "./data.txt")]
    (table.insert tbl line))
  (local trees {})
  (for [i 0 (- (length tbl) 1) slope-y]
    (if (= (string.sub (. tbl (+ i 1)) (+ (% (* i slope-x) (length (. tbl 1))) 1) (+ (% (* i slope-x) (length (. tbl 1))) 1)) "#")
        (table.insert trees "tree")))
  (length trees)))

(->
 (* (number-of-trees 1 1) (number-of-trees 3 1) (number-of-trees 5 1) (number-of-trees 7 1) (number-of-trees 1 2))
  (print ))
