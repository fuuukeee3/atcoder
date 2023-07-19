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

	var k, s int
	fmt.Fscan(in, &k, &s)

	count := 0
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			z := s - (x + y)
			if z >= 0 && z <= k {
				count++
			}
		}
	}

	fmt.Fprintln(out, count)
}
