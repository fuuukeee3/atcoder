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

	var n, m, p int
	fmt.Fscan(in, &n, &m, &p)

	answers := []int{}
	current := m
	for {
		if current > n {
			break
		}

		answers = append(answers, current)
		current += p
	}

	fmt.Fprintln(out, len(answers))
}
