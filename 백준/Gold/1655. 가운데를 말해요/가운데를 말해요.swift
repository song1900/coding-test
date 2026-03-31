  import Foundation

  struct Heap<T: Comparable> {
      var nodes: [T] = []
      let compare: (T, T) -> Bool

      var isEmpty: Bool { nodes.isEmpty }
      var count: Int { nodes.count }
      var top: T? { nodes.first }

      init(_ compare: @escaping (T, T) -> Bool) {
          self.compare = compare
      }

      mutating func push(_ val: T) {
          nodes.append(val)
          var i = nodes.count - 1
          while i > 0 {
              let parent = (i - 1) / 2
              if compare(nodes[i], nodes[parent]) {
                  nodes.swapAt(i, parent)
                  i = parent
              } else { break }
          }
      }

      mutating func pop() -> T? {
          guard !nodes.isEmpty else { return nil }
          if nodes.count == 1 { return nodes.removeLast() }
          let val = nodes[0]
          nodes[0] = nodes.removeLast()
          var i = 0
          while true {
              let l = 2 * i + 1, r = 2 * i + 2
              var pick = i
              if l < nodes.count && compare(nodes[l], nodes[pick]) { pick = l }
              if r < nodes.count && compare(nodes[r], nodes[pick]) { pick = r }
              if pick == i { break }
              nodes.swapAt(i, pick)
              i = pick
          }
          return val
      }
  }

  let n = Int(readLine()!)!
  var maxHeap = Heap<Int>(>)
  var minHeap = Heap<Int>(<)
  var result = ""

  for _ in 0..<n {
      let x = Int(readLine()!)!

      if maxHeap.count == minHeap.count {
          maxHeap.push(x)
      } else {
          minHeap.push(x)
      }


      if let lo = maxHeap.top,
          let hi = minHeap.top, lo > hi 
      {
          maxHeap.pop()
          minHeap.pop()
          maxHeap.push(hi)
          minHeap.push(lo)
      }

      result += "\(maxHeap.top!)\n"
  }

  print(result)

