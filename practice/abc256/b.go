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

	var base []int
	for i := 0; i < n; i++ {
		var nn int
		fmt.Fscan(in, &nn)
		base = append(base, nn)
	}

	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			base[i] += base[j]
		}
	}

	count := 0
	for _, b := range base {
		if b >= 4 {
			count += 1
		}
	}
	fmt.Fprintln(out, count)
}
