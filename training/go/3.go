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

	var n, a, b int
	fmt.Fscan(in, &n, &a, &b)

	var s string
	fmt.Fscan(in, &s)

	domestic := 0
	oversea := 0
	var results []string
	for _, person := range s {
		switch string(person) {
		case "a":
			if domestic+oversea < a+b {
				results = append(results, "Yes")
				domestic++
			} else {
				results = append(results, "No")
			}
		case "b":
			if domestic+oversea < a+b && oversea < b {
				results = append(results, "Yes")
				oversea++
			} else {
				results = append(results, "No")
			}
		case "c":
			results = append(results, "No")
		}
	}

	fmt.Fprintln(out, strings.Join(results, "\n"))
}
