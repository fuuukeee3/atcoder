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

	var h, a int
	fmt.Fscan(in, &h, &a)

	div, mod := divmod(h, a)
	if mod == 0 {
		fmt.Fprintln(out, div)
	} else {
		fmt.Fprintln(out, div+1)
	}
}

func divmod(a, b int) (int, int) {
	div := a / b
	mod := a % b
	return div, mod
}
