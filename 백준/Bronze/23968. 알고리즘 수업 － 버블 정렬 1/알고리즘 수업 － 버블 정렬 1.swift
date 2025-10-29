let nk = readLine()!.split(separator: " ").map { Int($0)! }

let N = nk[0]
let K = nk[1]

var A = readLine()!.split(separator: " ").map { Int($0)! }

var swapCount = 0
var answer: (Int, Int)? = nil

outerLoop: for last in stride(from: N-1, through: 1, by: -1) {
    for i in 0..<last {
        if A[i] > A[i+1] {
            let x = A[i]
            let y = A[i+1]
            A.swapAt(i, i+1)
            
            swapCount += 1
            if swapCount == K {
                if x < y {
                    answer = (x, y)
                } else {
                    answer = (y, x)
                }
                break outerLoop
            }
        }
    }
}

if let pair = answer {
    print("\(pair.0) \(pair.1)")
} else {
    print(-1)
}
