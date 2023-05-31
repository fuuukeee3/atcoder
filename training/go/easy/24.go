package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var a, b, m int
	fmt.Fscan(in, &a, &b, &m)

	aa := make([]int, a, a)
	for i := 0; i < a; i++ {
		var price int
		fmt.Fscan(in, &price)
		aa[i] = price
	}

	bb := make([]int, b, b)
	for i := 0; i < b; i++ {
		var price int
		fmt.Fscan(in, &price)
		bb[i] = price
	}

	amin := 999999
	for _, price := range aa {
		if price < amin {
			amin = price
		}
	}

	bmin := 999999
	for _, price := range bb {
		if price < bmin {
			bmin = price
		}
	}

	totalMin := amin + bmin

	for i := 0; i < m; i++ {
		var x, y, c int
		fmt.Fscan(in, &x, &y, &c)

		total := aa[x-1] + bb[y-1] - c
		if total < totalMin {
			totalMin = total
		}

	}
	fmt.Fprintln(out, totalMin)
}
