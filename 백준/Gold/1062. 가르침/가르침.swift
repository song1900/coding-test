import Foundation

  let line1 = readLine()!.split(separator: " ").map { Int($0)! }
  let N = line1[0], K = line1[1]

  var words = [Int]()
  for _ in 0..<N {
      let word = readLine()!
      var mask = 0
      for ch in word {
          mask |= 1 << Int(ch.asciiValue! - 97)
      }
      words.append(mask)
  }

  guard K >= 5 else { print(0); exit(0) }
  guard K < 26 else { print(N); exit(0) }

  var baseMask = 0
  for r in [0, 2, 8, 13, 19] { baseMask |= 1 << r }

  var candidates = [Int]()
  for i in 0..<26 {
      if (baseMask >> i) & 1 == 0 { candidates.append(i) }
  }

  var ans = 0
  let remaining = K - 5

  func dfs(_ idx: Int, _ count: Int, _ mask: Int) {
      if count == remaining {
          var cnt = 0
          for w in words where (w & mask) == w { cnt += 1 }
          ans = max(ans, cnt)
          return
      }

      if candidates.count - idx < remaining - count { return }

      dfs(idx + 1, count + 1, mask | (1 << candidates[idx]))
      dfs(idx + 1, count, mask)
  }

  dfs(0, 0, baseMask)
  print(ans)