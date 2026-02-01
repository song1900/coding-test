import Foundation

let N = Int(readLine()!)!

func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    if n == 2 { return true }
    if n % 2 == 0 { return false }
    
    var i = 3
    while i * i <= n {
        if n % i == 0 { return false}
        i += 2
    }
    return true
}

func dfs(_ n: Int, _ l: Int) {
    if l == N {
        print (n)
        return
    }
    
    for digit in [1, 3, 7, 9] {
        let nextNum = n * 10 + digit
        if isPrime(nextNum) {
            dfs(nextNum, l + 1)
        }
    }
}

for s in [2, 3, 5, 7] {
    dfs(s, 1)
}