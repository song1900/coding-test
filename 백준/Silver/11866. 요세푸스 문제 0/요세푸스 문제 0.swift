let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]

var queue: [Int] = Array(1...N)

var result: [Int] = []

var idx = 0

while !queue.isEmpty {

    idx = (idx + K - 1) % queue.count
    let r = queue.remove(at: idx)
    result.append(r)
    
}

let answer = result.map { String($0) }.joined(separator: ", ")
print("<\(answer)>")