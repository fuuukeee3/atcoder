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

	for {
		if a == 0 || b == 0 {
			break
		}
		if a == b {
			break
		}

		if a > b {
			a = a % b
		} else {
			b = b % a
		}
	}

	if a > b {
		fmt.Fprintln(out, a)
	} else {
		fmt.Fprintln(out, b)
	}
}
