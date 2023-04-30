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

	winCount := []int{0}
	loseCount := []int{0}
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)

		if a == 1 {
			winCount = append(winCount, winCount[i]+1)
			loseCount = append(loseCount, loseCount[i])
		} else {
			winCount = append(winCount, winCount[i])
			loseCount = append(loseCount, loseCount[i]+1)
		}
	}

	var q int
	fmt.Fscan(in, &q)

	for i := 0; i < q; i++ {
		var l, r int
		fmt.Fscan(in, &l, &r)

		win := winCount[r] - winCount[l-1]
		lose := loseCount[r] - loseCount[l-1]
		if win == lose {
			fmt.Fprintln(out, "draw")
		} else if win > lose {
			fmt.Fprintln(out, "win")
		} else {
			fmt.Fprintln(out, "lose")
		}
	}
}
