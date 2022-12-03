package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var h, w int
	fmt.Fscan(in, &h, &w)

	count := 0
	for i := 0; i < h; i++ {
		var s string
		fmt.Fscan(in, &s)
		count += strings.Count(s, "#")
	}
	fmt.Fprintln(out, count)
}
