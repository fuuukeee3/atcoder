package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n, p, q, r, s int
	fmt.Fscan(in, &n, &p, &q, &r, &s)

	var arr, new_arr []string
	for i := 0; i < n; i++ {
		var ss string
		fmt.Fscan(in, &ss)
		arr = append(arr, ss)
	}

	new_arr = append(new_arr, arr[0:p-1]...)
	new_arr = append(new_arr, arr[r-1:s]...)
	new_arr = append(new_arr, arr[q:r-1]...)
	new_arr = append(new_arr, arr[p-1:q]...)
	new_arr = append(new_arr, arr[s:]...)

	fmt.Fprintln(out, strings.Join(new_arr, " "))
}
