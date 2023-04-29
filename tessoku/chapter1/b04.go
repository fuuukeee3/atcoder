package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n string
	fmt.Fscan(in, &n)

	sum := 0
	for i := 0; i < len(n); i++ {
		num, _ := strconv.Atoi(string(n[i]))
		if num == 1 {
			a := math.Pow(2.0, float64(len(n)-i-1))
			sum += int(a)
		}
	}
	fmt.Fprintln(out, sum)
}
