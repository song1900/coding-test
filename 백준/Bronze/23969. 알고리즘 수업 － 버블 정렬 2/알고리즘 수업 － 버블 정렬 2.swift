let nk = readLine()!.split(separator: " ").map { Int($0)! }

let N = nk[0]
let K = nk[1]

var A = readLine()!.split(separator: " ").map { Int($0)! }

var swapCount = 0

outerLoop: for last in stride(from: N-1, through: 1, by: -1) {
    
    for i in 0..<last {
        
        let x = A[i]
        let y = A[i + 1]
        
        if (x > y) {
            A.swapAt(i, i+1)
            
            swapCount += 1
            
            if swapCount == K {
                
                break outerLoop
            }
            
            
        }
    
    }

}

if swapCount >= K {
    print(A.map { String($0) }.joined(separator: " ") )
} else {
    print(-1)
}

