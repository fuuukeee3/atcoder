package main

import "fmt"

type process struct {
	name string
	time int
}
type queue struct {
	data []process
}

func (q *queue) push(p process) {
	q.data = append(q.data, p)
}

func (q *queue) shift() process {
	rtn := q.data[0]
	q.data = q.data[1:]
	return rtn
}

func main() {
	var n, q int
	fmt.Scan(&n, &q)

	queue := queue{}
	for i := 0; i < n; i++ {
		var name string
		var time int
		fmt.Scan(&name, &time)

		queue.push(process{name: name, time: time})
	}

	totalTime := 0
	for {
		if len(queue.data) == 0 {
			break
		}

		current := queue.shift()
		if current.time > q {
			current.time -= q
			queue.push(current)
			totalTime += q
		} else {
			totalTime += current.time
			fmt.Println(current.name, totalTime)
		}
	}
}
