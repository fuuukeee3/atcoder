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

	var n, k int
	fmt.Fscan(in, &n, &k)

	for i := 0; i < k; i++ {
		str := tmp(n)
		new_str := strings.ReplaceAll(str, "8", "5")
		n, _ = strconv.Atoi(new_str)
	}
	fmt.Fprintln(out, n)
}

func tmp(n int) string {
	str := strconv.Itoa(n)
	hex, _ := strconv.ParseInt(str, 8, 64)

	rtn := ""
	for {
		mod := hex % 9
		hex = hex / 9

		rtn = strconv.Itoa(int(mod)) + rtn
		if hex < 9 {
			rtn = strconv.Itoa(int(hex)) + rtn
			break
		}
	}

	return rtn
}
