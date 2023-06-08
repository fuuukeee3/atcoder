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
	scores := make(map[int]int)
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)
		arr = append(arr, a)
		if _, ok := scores[a]; ok {
			scores[a]++
		} else {
			scores[a] = 1
		}
	}

	count := 0
	for _, a := range arr {
		if scores[a] != 0 {
			count += scores[a] - 1
			scores[a]--
		}
	}
	fmt.Fprintln(out, count)
}
