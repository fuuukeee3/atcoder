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

	var k, a, b int
	fmt.Fscan(in, &k, &a, &b)

	flg := false
	for i := a; i <= b; i++ {
		if i%k == 0 {
			flg = true
			break
		}
	}
	if flg {
		fmt.Fprintln(out, "OK")
	} else {
		fmt.Fprintln(out, "NG")
	}
}
