package main

import "fmt"

func main() {
	arr := selectionSort([]int{5, 6, 4, 2, 1, 3})
	fmt.Println(arr)
}

func selectionSort(arr []int) []int {
	// 先頭からスタート
	for i := 0; i < len(arr)-1; i++ {
		// 現在の要素が最小値のindexとする
		minIndex := i

		// 未ソート部(i+1) ~ nを走査して、最小値のindexを探す
		for j := i + 1; j < len(arr); j++ {
			if arr[minIndex] > arr[j] {
				minIndex = j
			}
		}

		// 現在地(i)に最小値をswap
		arr[i], arr[minIndex] = arr[minIndex], arr[i]
	}
	return arr
}
