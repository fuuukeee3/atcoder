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

	var n, m int
	fmt.Fscan(in, &n, &m)

	var arr [][]int
	for i := 0; i < n; i++ {
		var s string
		fmt.Fscan(in, &s)

		var arr2 []int
		for _, c := range s {
			if string(c) == "o" {
				arr2 = append(arr2, 1)
			} else {
				arr2 = append(arr2, 0)
			}
		}
		arr = append(arr, arr2)
	}

	count := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			bool := true
			for k := 0; k < m; k++ {
				if arr[i][k]+arr[j][k] < 1 {
					bool = false
				}
			}
			if bool {
				count++
			}
		}
	}
	fmt.Fprintln(out, count)
}
