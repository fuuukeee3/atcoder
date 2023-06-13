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

	var n int
	fmt.Fscan(in, &n)

	arr := make([]int, n)
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)
		arr[i] = a
	}

	sum := 0
	for _, a := range arr {
		sum += a - 1
	}
	fmt.Fprintln(out, sum)
}
