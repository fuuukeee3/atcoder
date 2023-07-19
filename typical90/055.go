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

	var n, p, q int
	fmt.Fscan(in, &n, &p, &q)

	var arr []int
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)
		arr = append(arr, a%p)
	}

	count := 0
	for i1 := 0; i1 < n; i1++ {
		for i2 := 0; i2 < i1; i2++ {
			for i3 := 0; i3 < i2; i3++ {
				for i4 := 0; i4 < i3; i4++ {
					for i5 := 0; i5 < i4; i5++ {
						if arr[i1]%p*arr[i2]%p*arr[i3]%p*arr[i4]%p*arr[i5]%p == q {
							count++
						}
					}
				}
			}
		}
	}
	fmt.Fprintln(out, count)
}
