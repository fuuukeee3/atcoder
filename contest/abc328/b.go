package main

import (
	"bufio"
	"fmt"
	"golang.org/x/exp/slices"
	"os"
	"strconv"
	"strings"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n int
	fmt.Fscan(in, &n)

	days := make([]int, n)
	for i := 0; i < n; i++ {
		var day int
		fmt.Fscan(in, &day)
		days[i] = day
	}

	count := 0
	for i := 1; i <= n; i++ {
		month := strconv.Itoa(i)
		for d := 1; d <= days[i-1]; d++ {
			day := strconv.Itoa(d)
			tmp := strings.Split(month+day, "")
			uniq := slices.Compact(tmp)
			if len(uniq) == 1 {
				count++
			}
		}
	}

	fmt.Fprintln(out, count)
}
