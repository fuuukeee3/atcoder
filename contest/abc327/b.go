package main

import (
	"bufio"
	"fmt"
	"math/big"
	"os"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var b int64
	fmt.Fscan(in, &b)

	answer := -1
	for i := int64(1); i <= 20; i++ {
		base := big.NewInt(i)
		exp := big.NewInt(i)
		ip := new(big.Int).Exp(base, exp, nil)
		if ip.Cmp(big.NewInt(b)) == 0 {
			answer = int(i)
		}
	}
	fmt.Fprintln(out, answer)
}
