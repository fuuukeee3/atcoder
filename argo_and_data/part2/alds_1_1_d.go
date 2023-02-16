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

	var arr []float64
	for i := 0; i < n; i++ {
		var nn float64
		fmt.Fscan(in, &nn)
		arr = append(arr, nn)
	}

	min := arr[0]
	max := -2000000000.0

	for i := 1; i < n; i++ {
		max = math.Max(arr[i]-min, max)
		min = math.Min(arr[i], min)
	}

	fmt.Fprintln(out, int(max))
}
