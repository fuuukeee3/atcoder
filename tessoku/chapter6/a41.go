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

	flg := false
	for i := 2; i < n; i++ {
		str := string(s[i-2]) + string(s[i-1]) + string(s[i])
		if str == "RRR" || str == "BBB" {
			flg = true
		}
	}

	if flg {
		fmt.Fprintln(out, "Yes")
	} else {
		fmt.Fprintln(out, "No")
	}
}
