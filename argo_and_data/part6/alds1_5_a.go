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

	var n int
	fmt.Fscan(in, &n)

	var a []int
	for i := 0; i < n; i++ {
		var aa int
		fmt.Fscan(in, &aa)
		a = append(a, aa)
	}

	var q int
	fmt.Fscan(in, &q)

	var mm []int
	for i := 0; i < q; i++ {
		var m int
		fmt.Fscan(in, &m)
		mm = append(mm, m)
	}

	var sums []int
	for bits := 0; bits < (1 << uint64(n)); bits++ {
		sum := 0
		for i := 0; i < n; i++ {
			if (bits>>uint64(i))&1 == 1 {
				sum += a[i]
			}
		}
		sums = append(sums, sum)
	}

	for _, v := range mm {
		flg := false
		for _, sum := range sums {
			if sum == v {
				flg = true
			}
		}

		if flg {
			fmt.Fprintln(out, "yes")
		} else {
			fmt.Fprintln(out, "no")
		}
	}
}
