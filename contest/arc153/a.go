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

	var n int
	fmt.Fscan(in, &n)

	count := 0
	for i := 100000; i <= 999999; i++ {
		count += 1
		if count == n {
			is := strconv.Itoa(i)
			ans := string(is[0]) + string(is[0]) + string(is[1]) + string(is[2]) + string(is[3]) + string(is[3]) + string(is[4]) + string(is[5]) + string(is[4])
			fmt.Fprintln(out, ans)
		}
	}
}

// AABCDDEFE
