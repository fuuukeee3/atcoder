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

	var n, m int
	fmt.Fscan(in, &n, &m)

	presents := make([]int, n)
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)
		presents[i] = a
	}

	sort.Ints(presents)
	max := 0
	for si, present := range presents {
		ei := sort.Search(n, func(i int) bool { return presents[i] >= present+m })
		if ei-si >= max {
			max = ei - si
		}
	}

	fmt.Fprintln(out, max)
}
