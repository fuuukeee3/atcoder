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
		var h int
		fmt.Fscan(in, &h)
		arr[i] = h
	}

	flg := true
	for i := n - 1; i >= 1; i-- {
		if arr[i-1] > arr[i] {
			arr[i-1] = arr[i-1] - 1
			if arr[i-1] > arr[i] {
				flg = false
			}
		}
	}

	if flg {
		fmt.Fprintln(out, "Yes")
	} else {
		fmt.Fprintln(out, "No")
	}
}
