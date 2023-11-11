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

	//var mochies [101]int
	//for i := 0; i < n; i++ {
	//	var nn int
	//	fmt.Fscan(in, &nn)
	//	mochies[nn]++
	//}
	//
	//count := 0
	//for _, m := range mochies {
	//	if m >= 1 {
	//		count++
	//	}
	//}

	mochies := map[int]bool{}
	for i := 0; i < n; i++ {
		var nn int
		fmt.Fscan(in, &nn)

		if _, ok := mochies[nn]; !ok {
			mochies[nn] = true
		}
	}

	fmt.Fprintln(out, len(mochies))
}
