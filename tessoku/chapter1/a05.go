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

	var n, k int
	fmt.Fscan(in, &n, &k)

	count := 0
	for red := 1; red <= n; red++ {
		for blue := 1; blue <= n; blue++ {
			white := k - red - blue
			if white <= n && white > 0 {
				count++
			}
		}
	}

	fmt.Fprintln(out, count)
}
