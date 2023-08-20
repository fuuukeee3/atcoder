package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n int
	fmt.Fscan(in, &n)

	flavors := make(map[int][]int)
	for i := 0; i < n; i++ {
		var f, s int
		fmt.Fscan(in, &f, &s)

		flavors[f] = append(flavors[f], s)
	}

	sameMax := 0
	var tops []int
	for _, f := range flavors {
		sort.Sort(sort.Reverse(sort.IntSlice(f)))
		if len(f) >= 2 {
			if sameMax < f[0]+(f[1]/2) {
				sameMax = f[0] + (f[1] / 2)
			}
		}

		tops = append(tops, f[0])
	}

	otherMax := 0
	if len(tops) >= 2 {
		sort.Sort(sort.Reverse(sort.IntSlice(tops)))
		otherMax = tops[0] + tops[1]
	}

	if sameMax >= otherMax {
		fmt.Fprintln(out, sameMax)
	} else {
		fmt.Fprintln(out, otherMax)
	}
}
