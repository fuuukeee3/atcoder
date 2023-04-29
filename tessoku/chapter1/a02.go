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

	var n, x int
	fmt.Fscan(in, &n, &x)

	var a []int
	for i := 0; i < n; i++ {
		var aa int
		fmt.Fscan(in, &aa)
		a = append(a, aa)
	}

	flg := false
	for _, aa := range a {
		if aa == x {
			flg = true
		}
	}

	if flg {
		fmt.Fprintln(out, "Yes")
	} else {
		fmt.Fprintln(out, "No")
	}

}