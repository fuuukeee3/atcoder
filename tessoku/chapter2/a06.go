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
	fmt.Fscan(in, &n, &q)

	sum := []int{0}
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)

		sum = append(sum, a+sum[i])
	}

	for i := 0; i < q; i++ {
		var l, r int
		fmt.Fscan(in, &l, &r)

		fmt.Fprintln(out, sum[r]-sum[l-1])
	}

}
