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

	a := make([]int, n)
	aTotal := 0
	for i := 0; i < n; i++ {
		var aa int
		fmt.Fscan(in, &aa)
		a[i] = aa
		aTotal += aa
	}
	sort.Ints(a)

	div := aTotal / n
	mod := aTotal % n

	var b []int
	for i := 0; i < n-mod; i++ {
		b = append(b, div)
	}
	for i := 0; i < mod; i++ {
		b = append(b, div+1)
	}

	count := 0
	for i := 0; i < n; i++ {
		count += int(math.Abs(float64(a[i]) - float64(b[i])))
	}

	fmt.Fprintln(out, count/2)
}
