let kn = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

let K = kn[0]
let N = kn[1]

var list: [Int] = []
for _ in 0..<K {
    list.append(Int(readLine()!)!)
}

var left = 1
var right = list.max() ?? 0
var answer = 0

while left <= right {
    let mid = (left + right) / 2
    
    var count = 0
    
    for len in list {
        count += len / mid
        if count >= N { break }
        
    }
    
    if count >= N {
        answer = mid
        left = mid + 1
        
    } else {
        right = mid - 1
    }
}


print(answer)