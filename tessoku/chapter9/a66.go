package main

import (
	"bufio"
	"fmt"
	"os"
)

type UnionFind struct {
	Parents    []int
	GroupSizes []int
}

// NewUnionFind is UnionFind構造体の初期化
// Parentsはrootがない-1を設定
// GroupSizesは、グループの要素数は初期値1
func NewUnionFind(n int) *UnionFind {
	p := make([]int, n+1)
	g := make([]int, n+1)
	for i := 1; i <= n; i++ {
		p[i] = -1
		g[i] = 1
	}

	return &UnionFind{
		Parents:    p,
		GroupSizes: g,
	}
}

// Root is xの頂点を返す
func (uf *UnionFind) Root(x int) int {
	for {
		if uf.Parents[x] == -1 {
			break
		}
		x = uf.Parents[x]
	}
	return x
}

// unite is 要素uとvの統合
func (uf *UnionFind) unite(u, v int) {
	uRoot := uf.Root(u)
	vRoot := uf.Root(v)
	if uRoot == vRoot {
		return // 同じグループなら結合不要
	}

	if uf.GroupSizes[uRoot] < uf.GroupSizes[vRoot] {
		uf.Parents[uRoot] = vRoot
		uf.GroupSizes[vRoot] += uf.GroupSizes[uRoot]
	} else {
		uf.Parents[vRoot] = uRoot
		uf.GroupSizes[uRoot] += uf.GroupSizes[vRoot]
	}
}

// same is 要素uとvが同じグループか判定する
func (uf *UnionFind) same(u, v int) bool {
	if uf.Root(u) == uf.Root(v) {
		return true
	} else {
		return false
	}
}

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n, q int
	fmt.Fscan(in, &n, &q)

	uf := NewUnionFind(n)

	for i := 0; i < q; i++ {
		var a, b, c int
		fmt.Fscan(in, &a, &b, &c)

		switch a {
		case 1:
			uf.unite(b, c)
		case 2:
			if uf.same(b, c) {
				fmt.Fprintln(out, "Yes")
			} else {
				fmt.Fprintln(out, "No")
			}
		}
	}
}
