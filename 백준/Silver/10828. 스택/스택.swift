let N = Int(readLine()!)!
var stack: [Int] = []
var output = ""

for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    let cmd = input[0]
    
    switch cmd {
    case "push":
        if let x = Int(input[1]) {
            stack.append(x)
        }
    case "pop":
        output += "\(stack.isEmpty ? -1 : stack.removeLast())\n"
    case "size":
        output += "\(stack.count)\n"
    case "empty":
        output += "\(stack.isEmpty ? 1 : 0)\n"
    case "top":
        output += "\(stack.last ?? -1)\n"
    default:
        break
    }
}

print(output)
