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

	var s string
	fmt.Fscan(in, &s)

	var results []string
	for _, ss := range s {
		if string(ss) == "1" {
			results = append(results, "0")
		} else {
			results = append(results, "1")
		}
	}

	fmt.Fprintln(out, strings.Join(results, ""))
}
