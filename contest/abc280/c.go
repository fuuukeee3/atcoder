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

	var s, t string
	fmt.Fscan(in, &s, &t)

	count := -1
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			count = i + 1
			break
		}
	}

	if count != -1 {
		fmt.Fprintln(out, count)
	} else {
		fmt.Fprintln(out, len(s)+1)
	}
}
