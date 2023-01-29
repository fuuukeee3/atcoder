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

	var arr []string
	for i := 0; i < n; i++ {
		var s string
		fmt.Fscan(in, &s)
		arr = append(arr, s)
	}

	var f, a int
	for _, s := range arr {
		if s == "For" {
			f++
		} else {
			a++
		}
	}

	if f > a {
		fmt.Fprintln(out, "Yes")
	} else {
		fmt.Fprintln(out, "No")
	}
}
