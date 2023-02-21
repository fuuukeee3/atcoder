package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var r, g, b int
	fmt.Fscan(in, &r, &g, &b)
	rgb := strconv.Itoa(r) + strconv.Itoa(g) + strconv.Itoa(b)
	rgbInt, _ := strconv.Atoi(rgb)
	if rgbInt%4 == 0 {
		fmt.Fprintln(out, "YES")
	} else {
		fmt.Fprintln(out, "NO")
	}
}
