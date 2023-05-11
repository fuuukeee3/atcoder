package main

import (
	"bufio"
	"fmt"
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

	a := make([]int, n+1)
	for i := 2; i <= n; i++ {
		var aa int
		fmt.Fscan(in, &aa)
		a[i] = aa
	}

	b := make([]int, n+1)
	for i := 3; i <= n; i++ {
		var bb int
		fmt.Fscan(in, &bb)
		b[i] = bb
	}

	dp := make([]int, n+1)
	dp[1] = 0
	dp[2] = a[2]

	for i := 3; i <= n; i++ {
		p1 := dp[i-1] + a[i]
		p2 := dp[i-2] + b[i]
		if p1 <= p2 {
			dp[i] = p1
		} else {
			dp[i] = p2
		}
	}

	answer := []int{}
	index := n
	for {
		answer = append(answer, index)
		if index == 1 {
			break
		}

		if dp[index-1]+a[index] == dp[index] {
			index -= 1
		} else {
			index -= 2
		}
	}

	reAnswer := []string{}
	for i := len(answer) - 1; i >= 0; i-- {
		reAnswer = append(reAnswer, strconv.Itoa(answer[i]))
	}
	fmt.Fprintln(out, len(reAnswer))
	fmt.Fprintln(out, strings.Join(reAnswer, " "))

}
