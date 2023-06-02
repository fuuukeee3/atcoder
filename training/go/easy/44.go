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

	var s string
	fmt.Fscan(in, &s)

	count1 := 0
	for i, ss := range s {
		if i%2 == 0 {
			if string(ss) == "1" {
				count1++
			}
		} else {
			if string(ss) == "0" {
				count1++
			}
		}
	}

	count2 := 0
	for i, ss := range s {
		if i%2 == 0 {
			if string(ss) == "0" {
				count2++
			}
		} else {
			if string(ss) == "1" {
				count2++
			}
		}
	}

	if count1 < count2 {
		fmt.Fprintln(out, count1)
	} else {
		fmt.Fprintln(out, count2)
	}
}
