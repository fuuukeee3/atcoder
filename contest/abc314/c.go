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

	var s string
	fmt.Fscan(in, &s)

	c := make([]int, n)
	for i := 0; i < n; i++ {
		var cc int
		fmt.Fscan(in, &cc)
		c[i] = cc
	}

	p := make([][]int, m+1)
	for i := 0; i < n; i++ {
		p[c[i]] = append(p[c[i]], i)
	}

	ans := make([]string, n)
	for i := 1; i <= m; i++ {
		size := len(p[i])
		for j := 0; j < size; j++ {
			ans[p[i][(j+1)%size]] = s[p[i][j] : p[i][j]+1]
		}
	}
	fmt.Fprintln(out, strings.Join(ans, ""))
}
