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

	var s string
	fmt.Fscan(in, &s)

	on := 0
	for _, ss := range s {
		if string(ss) == "1" {
			on++
		}
	}

	if k%2 == 0 && on%2 == 0 {
		fmt.Fprintln(out, "Yes")
	} else if k%2 == 1 && on%2 == 1 {
		fmt.Fprintln(out, "Yes")
	} else {
		fmt.Fprintln(out, "No")
	}
}
