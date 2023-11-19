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

	mm := make(map[string]int)
	for i := 0; i < n; {
		count := 1
		for i+1 < n && s[i] == s[i+1] {
			i++
			count++
		}

		if mm[string(s[i])] < count {
			mm[string(s[i])] = count
		}
		i++
	}

	sum := 0
	for _, v := range mm {
		sum += v
	}
	fmt.Fprintln(out, sum)
}
