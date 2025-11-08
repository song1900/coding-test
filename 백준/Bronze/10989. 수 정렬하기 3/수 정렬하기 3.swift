let N = Int(readLine()!)!
var cnt = [Int](repeating: 0, count: 10001)

for _ in 0..<N {
    cnt[Int(readLine()!)!] += 1
}

var result = ""

for v in 1...10000 {
    if cnt[v] > 0 {
        result += String(repeating: "\(v)\n", count: cnt[v])
    }
}

print(result)