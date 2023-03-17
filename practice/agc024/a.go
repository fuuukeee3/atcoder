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

	var a, b, c, k int
	fmt.Fscan(in, &a, &b, &c, &k)

	if k%2 == 0 {
		fmt.Fprintln(out, a-b)
	} else {
		fmt.Fprintln(out, b-a)
	}
}
