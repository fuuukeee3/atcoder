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

	var x, y int
	fmt.Fscan(in, &x, &y)

	flg := false
	if x > y {
		if x-3 <= y {
			flg = true
		}
	} else {
		if x+2 >= y {
			flg = true
		}
	}

	if flg {
		fmt.Fprintln(out, "Yes")
	} else {
		fmt.Fprintln(out, "No")
	}
}
