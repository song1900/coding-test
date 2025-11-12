let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map { Int($0)! }
let B = readLine()!.split(separator: " ").map { Int($0)! }

let sortedA = A.sorted()
let sortedB = B.sorted(by: >)

var answer = 0
for i in 0..<N {
    answer += sortedA[i] * sortedB[i]
}
print(answer)
