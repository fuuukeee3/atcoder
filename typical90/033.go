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

	if h == 1 || w == 1 {
		fmt.Fprintln(out, h*w)
	} else {
		fmt.Fprintln(out, ((h+1)/2)*((w+1)/2))
	}
}
