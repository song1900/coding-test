let N = Int(readLine()!)!
var queue = Array(1...N)
var front = 0

while queue.count - front > 1 {
    front += 1
    let card = queue[front]
    front += 1
    queue.append(card)
}

print(queue[front])
