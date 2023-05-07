package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n int
	fmt.Fscan(in, &n)

	var arr []int
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)
		arr = append(arr, a)
	}

	newArr := make([]int, len(arr))
	_ = copy(newArr, arr)

	sort.Ints(newArr)
	used := map[int]bool{}
	sortedArr := []int{}
	for _, a := range newArr {
		if !used[a] {
			sortedArr = append(sortedArr, a)
			used[a] = true
		}
	}

	hash := map[int]int{}
	for index, a := range sortedArr {
		hash[a] = index + 1
	}

	results := []string{}
	for _, a := range arr {
		s := strconv.Itoa(hash[a])
		results = append(results, s)
	}

	fmt.Fprintln(out, strings.Join(results, " "))
}
