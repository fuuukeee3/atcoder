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

	fmt.Fprintln(out, rec(n))
}

func rec(n int) int {
	if n == 1 {
		return 1
	}

	return n + rec(n-1)
}
