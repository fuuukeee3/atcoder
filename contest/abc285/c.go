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

	var s string
	fmt.Fscan(in, &s)

	arr := []float64{}
	for i := 0; i < len(s); i++ {
		kitei := math.Pow(float64(26), float64(len(s)-i-1))
		arr = append(arr, kitei*float64(s[i]-64))
	}

	result := 0
	for _, a := range arr {
		result += int(a)
	}
	fmt.Fprintln(out, result)
}
