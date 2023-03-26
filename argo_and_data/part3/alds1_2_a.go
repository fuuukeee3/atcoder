package main

import "fmt"

func main() {
	arr := bubbleSort([]int{5, 3, 2, 4, 1})
	fmt.Println(arr)
}

func bubbleSort(arr []int) []int {
	flg := true

	// iは要素が確定した位置
	// バブルソートでは先頭から位置が確定していく
	for i := 0; flg; i++ {
		flg = false

		// jは後ろから要素が確定していない先頭位置(i+1)までループ
		for j := len(arr) - 1; j >= i+1; j-- {

			if arr[j] < arr[j-1] {
				// 一つ前の要素の方が大きければスワップ
				arr[j], arr[j-1] = arr[j-1], arr[j]

				//fmt.Println(arr)
				flg = true
			}
		}
	}

	return arr
}
