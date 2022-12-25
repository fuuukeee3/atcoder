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

	var s string
	var count, i int
	fmt.Fscan(in, &s)
	for {
		count++
		i++
		if i < len(s)-1 {
			if string(s[i]) == "0" && string(s[i+1]) == "0" {
				i++
			}
		}
		if i >= len(s) {
			break
		}
	}
	fmt.Fprintln(out, count)
}
