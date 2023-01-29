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

	var n, m int
	fmt.Fscan(in, &n, &m)

	var sarr, tarr []string
	var s string
	for i := 0; i < n; i++ {
		fmt.Fscan(in, &s)
		sarr = append(sarr, s)
	}
	for i := 0; i < m; i++ {
		fmt.Fscan(in, &s)
		tarr = append(tarr, s)
	}

	var count int
	for _, s := range sarr {
		flg := false
		for _, t := range tarr {
			if strings.HasSuffix(s, t) {
				count++
				flg = true
			}
			if flg {
				break
			}
		}
	}

	fmt.Fprintln(out, count)
}
