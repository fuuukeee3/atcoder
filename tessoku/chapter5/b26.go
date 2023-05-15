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

	var n int
	fmt.Fscan(in, &n)

	a := make([]bool, n+1)
	top := int(math.Sqrt(float64(n)))

	for i := 2; i <= top; i++ {
		if a[i] {
			continue
		}

		for j := i * 2; j <= n; j += i {
			a[j] = true
		}
	}

	for i := 2; i <= n; i++ {
		if !a[i] {
			fmt.Fprintln(out, i)
		}
	}
}
