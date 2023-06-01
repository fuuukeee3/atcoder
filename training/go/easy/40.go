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

	var a, b int
	fmt.Fscan(in, &a, &b)

	if a <= 0 && b >= 0 {
		fmt.Fprintln(out, "Zero")
	} else if a >= 1 {
		fmt.Fprintln(out, "Positive")
	} else {
		var cc int
		if b > 0 {
			aa := math.Abs(float64(a))
			bb := float64(-1)
			cc = int(math.Abs(aa - bb + 1))
		} else {
			aa := math.Abs(float64(a))
			bb := math.Abs(float64(b))
			cc = int(math.Abs(aa - bb + 1))
		}

		if cc%2 == 0 {
			fmt.Fprintln(out, "Positive")
		} else {
			fmt.Fprintln(out, "Negative")
		}
	}
}
