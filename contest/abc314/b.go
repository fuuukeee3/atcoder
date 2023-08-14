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

	roulettes := make([][]int, n)
	for i := 0; i < n; i++ {
		var c int
		fmt.Fscan(in, &c)

		roulette := make([]int, c)
		for i2 := 0; i2 < c; i2++ {
			var a int
			fmt.Fscan(in, &a)
			roulette[i2] = a
		}
		roulettes[i] = roulette
	}

	var x int
	fmt.Fscan(in, &x)

	var bingo []int
	min := 37
	for i, roulette := range roulettes {
		if slices.Contains(roulette, x) {
			bingo = append(bingo, i+1)
			if len(roulette) < min {
				min = len(roulette)
			}
		}
	}

	var ans []string
	for _, b := range bingo {
		if len(roulettes[b-1]) == min {
			bs := strconv.Itoa(b)
			ans = append(ans, bs)
		}
	}

	fmt.Fprintln(out, len(ans))
	fmt.Fprintln(out, strings.Join(ans, " "))
}
