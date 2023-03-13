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

	var n int
	fmt.Fscan(in, &n)

	ss := map[string]int{}
	for i := 0; i < n; i++ {
		var s string
		fmt.Fscan(in, &s)

		strArray := []string{}
		for _, str := range s {
			strArray = append(strArray, string(str))
		}

		sort.Strings(strArray)
		ss[strings.Join(strArray, "")]++
	}

	count := 0
	for _, v := range ss {
		count += v * (v - 1) / 2
	}
	fmt.Fprintln(out, count)
}
