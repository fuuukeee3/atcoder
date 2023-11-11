package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var x int
	fmt.Fscan(in, &x)

	max := 1
	for b := 1; b <= x; b++ {
		for p := 2; p <= x; p++ {
			bp := int(math.Pow(float64(b), float64(p)))
			if bp <= x && bp >= max {
				max = bp
			}
		}
	}
	fmt.Fprintln(out, max)
}
