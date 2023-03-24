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

	var n, x int
	fmt.Fscan(in, &n, &x)

	burger := rec(n)
	eat := burger[len(burger)-x:]

	count := 0
	for _, e := range eat {
		if string(e) == "P" {
			count += 1
		}
	}

	fmt.Fprintln(out, count)
}

func rec(n int) string {
	if n == 0 {
		return "P"
	}

	lburger := rec(n - 1)
	rtn := ""
	rtn += "B"
	rtn += lburger
	rtn += "P"
	rtn += lburger
	rtn += "B"

	return rtn
}
