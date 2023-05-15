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

	var a, b int
	fmt.Fscan(in, &a, &b)

	ab := a * b

	for {
		if a == b {
			break
		}
		if a == 0 || b == 0 {
			break
		}

		if a > b {
			a = a % b
		} else {
			b = b % a
		}
	}

	var gcd int
	if a > b {
		gcd = a
	} else {
		gcd = b
	}

	fmt.Fprintln(out, ab/gcd)
}
