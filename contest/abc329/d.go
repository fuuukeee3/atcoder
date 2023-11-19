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

	var n, m int
	fmt.Fscan(in, &n, &m)

	win := 0
	results := make([]int, n+1)
	for i := 0; i < m; i++ {
		var a int
		fmt.Fscan(in, &a)
		results[a]++

		if results[win] == results[a] {
			if win < a {
				fmt.Fprintln(out, win)
			} else {
				fmt.Fprintln(out, a)
				win = a
			}
		} else if results[win] < results[a] {
			fmt.Fprintln(out, a)
			win = a
		} else {
			fmt.Fprintln(out, win)
		}
	}
}
