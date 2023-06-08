package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n int
	fmt.Fscan(in, &n)

	var mins []int
	top := int(math.Sqrt(float64(n)))
	for a := 1; a <= top; a++ {
		if n%a != 0 {
			continue
		}
		b := n / a
		c := a + b - 2
		mins = append(mins, c)
	}

	sort.Ints(mins)
	fmt.Fprintln(out, mins[0])
}
