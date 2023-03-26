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

	var n int
	fmt.Fscan(in, &n)

	// ループ上限は2のn乗
	// 1 << 2 => 100(2) = 4, 1 << 3 1000(2) = 8
	for bits := 0; bits < (1 << uint64(n)); bits++ {
		for i := 0; i < n; i++ {
			// bitsの1桁目がonかどうか
			if (bits>>uint64(i))&1 == 1 {
				// フラグが立っている場合の処理
			}
		}
	}
}
