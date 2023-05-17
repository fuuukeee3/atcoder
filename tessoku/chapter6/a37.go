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

	var n, m, b int
	fmt.Fscan(in, &n, &m, &b)

	sum := 0

	for i := 0; i < n; i++ {
		var aa int
		fmt.Fscan(in, &aa)
		sum += aa * m
	}

	sum += b * n * m

	for i := 0; i < m; i++ {
		var cc int
		fmt.Fscan(in, &cc)
		sum += cc * n
	}

	fmt.Fprintln(out, sum)
}
