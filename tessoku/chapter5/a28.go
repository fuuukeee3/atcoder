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

	sum := 0
	for i := 0; i < n; i++ {
		var t string
		var a int
		fmt.Fscan(in, &t, &a)

		switch t {
		case "+":
			sum += a
		case "-":
			sum -= a
		case "*":
			sum *= a
		}
		if sum < 0 {
			sum += 10000
		}
		sum = sum % 10000
		fmt.Fprintln(out, sum)
	}
}
