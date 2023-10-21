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

	var arr [][]int
	for i := 0; i < n; i++ {
		var w, x int
		fmt.Fscan(in, &w, &x)
		arr = append(arr, []int{w, x})
	}

	answer := 0
	for i := 0; i < 24; i++ {
		total := 0
		for _, a := range arr {
			time := (i + a[1]) % 24
			if time >= 9 && time <= 17 {
				total += a[0]
			}
		}

		if answer <= total {
			answer = total
		}
	}
	fmt.Fprintln(out, answer)
}
