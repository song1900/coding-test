
let nk = readLine()!.split(separator: " ").map { Int($0)! }
let N = nk[0]
let K = nk[1]

var coin: [Int] = []

for _ in 0..<N {
    coin.append(Int(readLine()!)!)
}

coin.sort(by: >)


var value = K
var index = 0
var count = 0

while (value != 0) {
    let currentCoin = coin[index]
    
    if (value >= currentCoin) {
        value -= currentCoin
        count += 1
        
    } else {
        index += 1
    }
    
}

print(count)
