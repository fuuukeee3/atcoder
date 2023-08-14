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

	s := "3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"

	fmt.Fprintln(out, s[0:n+2])
}
