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

	var n, q int
	fmt.Fscan(in, &n)

	arr := []int{}
	for i := 0; i < n; i++ {
		var nn int
		fmt.Fscan(in, &nn)
		arr = append(arr, nn)
	}

	fmt.Fscan(in, &q)
	for i := 0; i < q; i++ {
		var q1, q2, q3 int
		fmt.Fscan(in, &q1, &q2)
		if q1 == 1 {
			fmt.Fscan(in, &q3)
			arr[q2-1] = q3
		} else {
			fmt.Fprintln(out, arr[q2-1])
		}
	}
}
