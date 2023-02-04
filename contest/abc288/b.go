package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strings"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n, k int
	fmt.Fscan(in, &n, &k)

	var arr []string
	for i := 0; i < n; i++ {
		var s string
		fmt.Fscan(in, &s)

		if i < k {
			arr = append(arr, s)
		}
	}

	sort.Strings(arr)
	fmt.Fprintln(out, strings.Join(arr, "\n"))
}
