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

	var x, a, b int
	fmt.Fscan(in, &x, &a, &b)

	money := x - a
	money = money % b
	fmt.Fprintln(out, money)
}