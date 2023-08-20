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

	var m int
	fmt.Fscan(in, &m)

	var days []int
	for i := 0; i < m; i++ {
		var d int
		fmt.Fscan(in, &d)
		days = append(days, d)
	}

	total := 1
	for _, d := range days {
		total += d
	}

	mid := total / 2

	for i, d := range days {
		if mid > d {
			mid -= d
		} else {
			fmt.Fprintln(out, i+1, d-(d-mid))
			break
		}
	}
}
