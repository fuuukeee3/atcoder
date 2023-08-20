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

	var s string
	fmt.Fscan(in, &s)

	str := []string{"a", "e", "i", "o", "u"}
	for _, ss := range str {
		s = strings.Replace(s, ss, "", -1)
	}

	fmt.Fprintln(out, s)
}
