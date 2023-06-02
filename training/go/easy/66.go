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

	n := 0
	w := 0
	so := 0
	e := 0
	for _, ss := range s {
		switch string(ss) {
		case "N":
			n++
		case "W":
			w++
		case "S":
			so++
		case "E":
			e++
		}
	}

	ns := true
	if (n == 0 && so != 0) || (n != 0 && so == 0) {
		ns = false
	}
	we := true
	if (w == 0 && e != 0) || (w != 0 && e == 0) {
		we = false
	}

	if ns && we {
		fmt.Fprintln(out, "Yes")
	} else {
		fmt.Fprintln(out, "No")
	}
}
