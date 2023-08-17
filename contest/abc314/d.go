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

	var n, q int
	var s string
	fmt.Fscan(in, &n, &s, &q)

	sSlice := strings.Split(s, "")

	type query struct {
		T int
		X int
		C string
	}

	queries := make([]query, q)
	lastConvertIndex := 0
	for i := 0; i < q; i++ {
		var t, x int
		var c string
		fmt.Fscan(in, &t, &x, &c)

		queries[i] = query{
			T: t,
			X: x,
			C: c,
		}

		if t == 2 || t == 3 {
			lastConvertIndex = i
		}
	}

	for i, q := range queries {
		switch q.T {
		case 1:
			sSlice[q.X-1] = q.C
		case 2:
			if i != lastConvertIndex {
				continue
			}
			for i := 0; i < n; i++ {
				sSlice[i] = strings.ToLower(sSlice[i])
			}
		case 3:
			if i != lastConvertIndex {
				continue
			}
			for i := 0; i < n; i++ {
				sSlice[i] = strings.ToUpper(sSlice[i])
			}
		}
	}
	fmt.Fprintln(out, strings.Join(sSlice, ""))
}
