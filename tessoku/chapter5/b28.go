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

	fibo := make([]int, n+1)
	fibo[1] = 1
	fibo[2] = 1
	for i := 3; i <= n; i++ {
		fibo[i] = (fibo[i-2] + fibo[i-1]) % 1000000007
	}
	fmt.Fprintln(out, fibo[n]%1000000007)
}
