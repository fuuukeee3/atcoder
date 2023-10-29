package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n int
	fmt.Fscan(in, &n)

	for i := n; i <= 919; i++ {
		s := strconv.Itoa(i)
		s1, _ := strconv.Atoi(string(s[0]))
		s2, _ := strconv.Atoi(string(s[1]))
		s3, _ := strconv.Atoi(string(s[2]))
		if s1*s2 == s3 {
			fmt.Fprintln(out, i)
			break
		}
	}
}
