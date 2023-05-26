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

	var x int
	fmt.Fscan(in, &x)

	primes := make([]bool, 1000001)
	for i := 0; i <= 1000000; i++ {
		primes[i] = true
	}
	primes[0] = false
	primes[1] = false

	for i := 2; i <= 1000000; i++ {
		if !primes[i] {
			continue
		}

		for ii := i * 2; ii <= 1000000; ii += i {
			primes[ii] = false
		}
	}

	for i := x; i <= len(primes); i++ {
		if primes[i] {
			fmt.Fprintln(out, i)
			break
		}
	}

}
