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

	var h, w int
	fmt.Fscan(in, &h, &w)

	total := h * w
	if h == 1 || w == 1 {
		fmt.Fprintln(out, 1)
	} else if total%2 == 0 {
		fmt.Fprintln(out, total/2)
	} else {
		fmt.Fprintln(out, total/2+1)
	}
}
