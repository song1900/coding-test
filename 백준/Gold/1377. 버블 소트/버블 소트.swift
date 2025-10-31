
let N = Int(readLine()!)!


var A: [(v: Int, idx: Int)] = []
for i in 0..<N {
    A.append(
        (Int(readLine()!)!, i)
    )
}

A.sort {
    $0.v < $1.v
}


var maxValue: Int = 0

for i in 0..<N {
    let s = A[i].idx - i
    
    maxValue = max(s, maxValue)
    
}

print(maxValue + 1)
