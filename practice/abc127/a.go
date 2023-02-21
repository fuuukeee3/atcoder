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

	var a, b int
	fmt.Fscan(in, &a, &b)

	fee := 0
	if a >= 13 {
		fee = b
	} else if a >= 6 {
		fee = b / 2
	}

	fmt.Fprintln(out, fee)
}
