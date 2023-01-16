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

	var s string
	fmt.Fscan(in, &s)

	for i := 1; i < n; i++ {
		for j := 1; j <= n; j++ {
			if (i + j) > n {
				fmt.Fprintln(out, j-1)
				break
			}
			if s[j-1] == s[j+i-1] {
				fmt.Fprintln(out, j-1)
				break
			}
		}
	}
}
