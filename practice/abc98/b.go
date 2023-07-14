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
	var s string
	fmt.Fscan(in, &s)

	max := 0
	for i := 1; i < n; i++ {
		a := s[0:i]
		b := s[i:]

		var aa = make(map[string]int)
		for _, sa := range a {
			aa[string(sa)]++
		}

		var bb = make(map[string]int)
		for _, ba := range b {
			bb[string(ba)]++
		}

		count := 0
		for k := range aa {
			if _, ok := bb[k]; ok {
				count++
			}
		}
		if count >= max {
			max = count
		}

	}
	fmt.Fprintln(out, max)
}
