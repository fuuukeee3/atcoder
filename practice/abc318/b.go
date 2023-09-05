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

	sheets := [100][100]bool{}

	for i := 0; i < n; i++ {
		var a, b, c, d int
		fmt.Fscan(in, &a, &b, &c, &d)

		for h := c; h < d; h++ {
			for w := a; w < b; w++ {
				sheets[h][w] = true
			}
		}
	}

	count := 0
	for _, sheet := range sheets {
		for _, s := range sheet {
			if s {
				count++
			}
		}
	}

	fmt.Fprintln(out, count)
}
