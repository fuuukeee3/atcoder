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

	var n, a, b, c int
	fmt.Fscan(in, &n, &a, &b, &c)

	min := 10000
	for aa := 0; aa <= 9999; aa++ {
		for bb := 0; bb <= 9999; bb++ {
			tmp := n - (a*aa + b*bb)
			if tmp < 0 {
				continue
			}
			cc := tmp / c
			mod := tmp % c
			if mod == 0 {
				if min >= aa+bb+cc {
					min = aa + bb + cc
				}
			}
		}
	}
	fmt.Fprintln(out, min)
}
