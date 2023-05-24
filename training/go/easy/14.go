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

	t1 := n % k
	t2 := k - t1

	if t1 >= t2 {
		fmt.Fprintln(out, t2)
	} else {
		fmt.Fprintln(out, t1)
	}
}
