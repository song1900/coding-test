let N = Int(readLine()!)!


var arr: [Int] = []

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

var stack: [Int] = []
var ops: [String] = []


var next = 1
var possible = true

for x in arr {
    
    while next <= x {
        stack.append(next)
        ops.append("+\n")
        next += 1
    }
    
    if let top = stack.last, top == x {
        stack.removeLast()
        ops.append("-\n")
    } else {
        possible = false
        break
    }
}

if possible {
    print(ops.joined())
} else {
    print("NO")
}