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

	fmt.Fprintln(out, int(math.Pow(2.0, n)))
}
