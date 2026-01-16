let N = Int(readLine()!)!
var graph = Array(repeating: [Int](), count: N + 1)

for _ in 0..<(N - 1) {
    let ab = readLine()!.split(separator: " ").map {Int($0)!}
    let a = ab[0], b = ab[1]
    graph[a].append(b)
    graph[b].append(a)
}

var parent = Array(repeating: 0, count: N+1)
var visited = Array(repeating: false, count: N+1)

var queue = [Int]()
queue.append(1)
visited[1] = true
var head = 0

while head < queue.count {
    let cur = queue[head]
    head += 1

    for next in graph[cur] {
        if !visited[next] {
            visited[next] = true
            parent[next] = cur
            queue.append(next)
        }
    }
}

var output = ""
for i in 2...N {
    output += "\(parent[i])\n"
}
print(output, terminator: "")