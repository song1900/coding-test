let nm = readLine()!.split(separator: " ").map { Int($0)! }
let N = nm[0]
let M = nm[1]

var graph = Array(repeating: [Int](), count: N + 1)
for _ in 0..<M {
    let ab = readLine()!.split(separator: " ").map { Int($0)! }
    let a = ab[0], b = ab[1]
    graph[a].append(b)
    graph[b].append(a)
}

var visited = Array(repeating: false, count: N + 1)

func dfs(_ start: Int) {
    var stack = [start]
    visited[start] = true

    while let v = stack.popLast() {
        for next in graph[v] {
            if !visited[next] {
                visited[next] = true
                stack.append(next)
            }
        }
    }
}

var count = 0

for i in 1...N {
    if !visited[i] {
        count += 1
        dfs(i)
    }
}

print(count)