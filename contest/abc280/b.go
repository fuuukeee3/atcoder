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

	var n int
	fmt.Fscan(in, &n)

	before := 0
	arr := []string{}
	for i := 0; i < n; i++ {
		var nn int
		fmt.Fscan(in, &nn)

		arr = append(arr, strconv.Itoa(nn-before))
		before = nn
	}

	fmt.Fprintln(out, strings.Join(arr, " "))
}
