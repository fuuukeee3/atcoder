package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n, x int
	fmt.Fscan(in, &n, &x)

	var arr []int
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)
		arr = append(arr, a)
	}

	sort.Ints(arr)

	count := 0
	for i, a := range arr {
		if x >= a {
			if i == len(arr)-1 {
				if x == a {
					count++
				}
			} else {
				count++
				x -= a
			}
		} else {
			break
		}
	}

	fmt.Fprintln(out, count)
}
