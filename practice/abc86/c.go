package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n int
	fmt.Fscan(in, &n)

	var bt, bx, by int
	flg := false
	for i := 0; i < n; i++ {
		var t, x, y int
		fmt.Fscan(in, &t, &x, &y)

		tt := t - bt
		xx := int(math.Abs(float64(x) - float64(bx)))
		yy := int(math.Abs(float64(y) - float64(by)))
		if tt < xx+yy {
			flg = true
		}

		if tt%2 == 0 && (xx+yy)%2 == 1 {
			flg = true
		}
		if tt%2 == 1 && (xx+yy)%2 == 0 {
			flg = true
		}

		bt = t
		bx = x
		by = y
	}

	if flg {
		fmt.Fprintln(out, "No")
	} else {
		fmt.Fprintln(out, "Yes")
	}
}
