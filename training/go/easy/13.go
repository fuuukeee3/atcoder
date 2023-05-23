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

	var a, b, c int
	fmt.Fscan(in, &a, &b, &c)

	if a == b && a == c {
		if a%2 == 1 {
			fmt.Fprintln(out, 0)
		} else {
			fmt.Fprintln(out, -1)
		}
	} else {
		count := 0
		for {
			if a%2 == 1 || b%2 == 1 || c%2 == 1 {
				break
			}

			aa := (b + c) / 2
			bb := (a + c) / 2
			cc := (a + b) / 2
			a = aa
			b = bb
			c = cc
			count++

		}
		fmt.Fprintln(out, count)
	}
}
