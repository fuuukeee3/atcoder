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

	var d, n int
	fmt.Fscan(in, &d, &n)

	arr := make([]int, d+1)
	for i := 0; i < n; i++ {
		var l, r int
		fmt.Fscan(in, &l, &r)
		arr[l-1]++
		arr[r]--
	}

	sum := []int{0}
	for index, a := range arr {
		sum = append(sum, a+sum[index])
	}

	for i := 1; i <= d; i++ {
		fmt.Fprintln(out, sum[i])
	}
}
