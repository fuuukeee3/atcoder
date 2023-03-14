package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strings"
	"unicode"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var s string
	fmt.Fscan(in, &s)

	words := []string{}
	for i := 0; i < len(s); {
		j := i + 1
		for {
			if unicode.IsUpper(rune(s[j])) {
				break
			}
			j++
		}

		words = append(words, s[i:j+1])
		i = j + 1
	}

	for i, word := range words {
		words[i] = strings.ToLower(word)
	}
	sort.Strings(words)
	for i, word := range words {
		new_word := strings.ToUpper(string(word[0]))
		new_word += word[1 : len(word)-1]
		new_word += strings.ToUpper(string(word[len(word)-1]))
		words[i] = new_word
	}
	fmt.Fprintln(out, strings.Join(words, ""))
}
