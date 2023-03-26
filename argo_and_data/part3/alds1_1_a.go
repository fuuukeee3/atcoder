package main

import "fmt"

func main() {
	//arr := insertionSort([]int{5, 2, 4, 6, 1, 3})
	//arr := insertionSort([]int{1, 2, 3, 4, 5, 6})
	arr := insertionSort([]int{6, 5, 4, 3, 2, 1})
	fmt.Println(arr)
}

func insertionSort(arr []int) []int {
	for i := 1; i < len(arr); i++ {
		// v => 入れ替え対象の要素
		v := arr[i]

		// ソート済みの部分を走査するので、iの位置より前の部分を対象にループ
		for j := i - 1; j >= 0; j-- {
			if arr[j] > v {
				// 入れ替え対象の要素より大きい場合は後ろにずらす
				arr[j+1], arr[j] = arr[j], arr[j+1]
			} else {
				// 入れ替え対象の要素より小さい場合はその後ろに挿入
				arr[j+1] = v
				break
			}
		}
		fmt.Println(arr)
	}
	return arr
}
