package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var s string
	fmt.Fscan(in, &s)

	var k int
	fmt.Fscan(in, &k)

	var index int
	answer := 1
	for i, ss := range s {
		if string(ss) != "1" {
			index = i
			a, _ := strconv.Atoi(string(ss))
			answer = a
			break
		}
	}

	if k <= index {
		fmt.Fprintln(out, 1)
	} else {
		fmt.Fprintln(out, answer)
	}
}
