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

	var n, k int
	fmt.Fscan(in, &n, &k)

	var arr []int
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)
		arr = append(arr, a)
	}

	left := 0
	right := 1000000000

	for left < right {
		mid := (left + right) / 2

		answer := check(mid, n, k, arr)
		if answer {
			right = mid
		} else {
			left = mid + 1
		}
	}
	fmt.Fprintln(out, left)

}

func check(mid, n, k int, arr []int) bool {
	sum := 0
	for i := 0; i < n; i++ {
		sum += mid / arr[i]
	}
	if sum >= k {
		return true
	} else {
		return false
	}
}
