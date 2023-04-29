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

	var arr []int
	for i := 0; i < n; i++ {
		var nn int
		fmt.Fscan(in, &nn)
		arr = append(arr, nn)
	}

	flg := false
	for a := 0; a < n-2; a++ {
		for b := a + 1; b < n-1; b++ {
			for c := b + 1; c < n; c++ {
				if arr[a]+arr[b]+arr[c] == 1000 {
					flg = true
				}
			}
		}
	}

	if flg {
		fmt.Fprintln(out, "Yes")
	} else {
		fmt.Fprintln(out, "No")
	}
}
