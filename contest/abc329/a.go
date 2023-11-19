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

	var s string
	fmt.Fscan(in, &s)

	for i, ss := range s {
		if i == len(s) {
			fmt.Fprint(out, string(ss))
		} else {
			fmt.Fprint(out, string(ss)+" ")
		}
	}
}
