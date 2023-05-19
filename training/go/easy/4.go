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

	var n float64
	fmt.Fscan(in, &n)

	priceNoTax := 0
	for i := 1; i <= int(n); i++ {
		price := float64(i) * 1.08
		if math.Floor(price) == n {
			priceNoTax = i
		}
	}

	if priceNoTax == 0 {
		fmt.Fprintln(out, ":(")
	} else {
		fmt.Fprintln(out, priceNoTax)

	}
}
