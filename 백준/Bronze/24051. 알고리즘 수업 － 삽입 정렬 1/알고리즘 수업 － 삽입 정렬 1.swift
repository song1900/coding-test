
let nk = readLine()!.split(separator: " ").map { Int($0)! }
let N = nk[0]
let K = nk[1]
var A = readLine()!.split(separator: " ").map { Int($0)! }

var count = 0
var result = -1

for i in 1..<N {
    let key = A[i]
    var j = i - 1

    while j >= 0 && A[j] > key {
        A[j + 1] = A[j]
        j -= 1
        count += 1
        if count == K {
            result = A[j + 1]
            break
        }
    }

    if count == K { break }

    
    if A[j + 1] != key {
        A[j + 1] = key
        count += 1
        if count == K {
            result = A[j + 1]
            break
        }
    }
}

print(result)

