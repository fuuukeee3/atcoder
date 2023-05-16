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
	fmt.Fscan(in, &n)

	a := n / 3
	b := n / 5
	c := n / 7

	ab := n / 15
	ac := n / 21
	bc := n / 35

	abc := n / (3 * 5 * 7)

	fmt.Fprintln(out, a+b+c-ab-ac-bc+abc)
}
