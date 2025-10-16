let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map { Int($0)! }

var result = [Int](repeating: -1, count: N)
var stack: [Int] = []

for i in 0..<N {
    while let last = stack.last, A[last] < A[i] {
        result[last] = A[i]
        stack.removeLast()
    }
    stack.append(i)
}

var out: String = ""
for i in 0..<N {
    out += "\(result[i])"
    if i+1 < N {
        out += " "
    }
}

print(out)
