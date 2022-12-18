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
	var s string
	fmt.Fscan(in, &n)
	fmt.Fscan(in, &s)

	flg := false

	for _, c := range s {
		if string(c) == "\"" {
			flg = !flg
		}

		if flg {
			fmt.Fprint(out, string(c))
		} else {
			if string(c) == "," {
				fmt.Fprint(out, ".")
			} else {
				fmt.Fprint(out, string(c))
			}
		}
	}
	fmt.Fprintln(out, "")
}
