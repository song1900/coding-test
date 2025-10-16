
let K = Int(readLine()!)!

var stack: [Int] = []


for _ in 0..<K {
    let input = Int(readLine()!)!
    
    if input == 0, let _ = stack.last {
        stack.removeLast()
    } else {
        stack.append(input)
    }
}

print(stack.reduce(0, +))
