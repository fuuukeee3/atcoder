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

	sticks := make(map[int]int)
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)
		sticks[a]++
	}

	var ans int
	for _, v := range sticks {
		if v < 3 {
			continue
		}
		ans += v * (v - 1) * (v - 2) / 6
	}
	fmt.Fprintln(out, ans)
}
