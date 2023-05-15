package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var q int
	fmt.Fscan(in, &q)

	for i := 0; i < q; i++ {
		var x int
		fmt.Fscan(in, &x)

		if isPrime(x) {
			fmt.Fprintln(out, "Yes")
		} else {
			fmt.Fprintln(out, "No")
		}
	}
}

func isPrime(num int) bool {
	if num < 2 {
		return false
	}

	if num == 2 {
		return true
	}

	top := math.Sqrt(float64(num))
	for i := 2; i <= int(top); i++ {
		if num%i == 0 {
			return false
		}
	}

	return true
}
