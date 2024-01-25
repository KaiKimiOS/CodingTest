import Foundation

func solution(scoville:[Int], K: Int) -> Int {
   
  var tempScoville = scoville
  var resultCount:Int = 0
    tempScoville.sort(by: <)

    
  while !tempScoville.isEmpty{
    if let first = tempScoville.first{
       
             
      if first < K && tempScoville.count == 1 {
         
        return -1
      }
       
      if first >= K {
        tempScoville.removeFirst()
        print("2️⃣ removeFirst")
      } else {
         
        let secondScoville = tempScoville[1]
        let newScoville = first + (secondScoville * 2)
         
        tempScoville.removeFirst() //첫번째 삭제
        tempScoville.removeFirst() //두번째 삭제
        resultCount += 1
         
        print("3️⃣ \(newScoville)")
        tempScoville.append(newScoville)
        tempScoville.sort(by: <)
        print("4️⃣\(tempScoville)")
      }
    }
  }
   
  print(resultCount)
  return resultCount
}


//Priority큐를 구현하지 않으면 난 몰라~.~.  ,  2,3,25  제외 모두 통과, 효율성 sorted때문에 시간초과
//⭐️결론 - 우선순위 큐 구현하면 문제는 쉬움 -> 우선순위 큐 , 힙 구현 및 공부하기


func solution1(scoville: [Int], k: Int) -> Int {
    var pq = PriorityQueue(sort: <, elements: scoville)
    var cnt = 0
    while let peek = pq.peek, peek < k {
        if let lowestScoville = pq.dequeue(), let secondLowestScoville = pq.dequeue() {
            let newScoville = lowestScoville + (secondLowestScoville * 2)
            pq.enqueue(newScoville)
        } else {
            return -1
        }
        cnt += 1
    }
    print(cnt)
    return cnt
}

// Below structs are used data strcutre. 'PriorityQueue' and 'Heap'

struct PriorityQueue<Element: Equatable> {
    private var heap: Heap<Element>

    init(sort: @escaping (Element, Element) -> Bool,
        elements: [Element] = []) {
        heap = Heap(sort: sort, elements: elements)
    }

    var isEmpty: Bool {
        return heap.isEmpty
    }

    var peek: Element? {
        return heap.peek()
    }

    mutating func enqueue(_ element: Element) {
        heap.insert(element)
    }

    mutating func dequeue() -> Element? {
        return heap.remove()
    }

}



struct Heap<Element: Equatable> {
    var elements: [Element] = []
    let sort: (Element, Element) -> Bool

    init(sort: @escaping (Element, Element) -> Bool, elements: [Element] = []) {
        self.sort = sort
        self.elements = elements

        if !elements.isEmpty {
            for i in stride(from: elements.count / 2 - 1, through: 0, by: -1) {
                siftDown(from: i)
            }
        }
    }

    var isEmpty: Bool {
        return elements.isEmpty
    }

    var count: Int {
        return elements.count
    }

    func peek() -> Element? {
        return elements.first
    }

    func leftChildIndex(ofParentAt index: Int) -> Int {
        return (2 * index) + 1
    }

    func rightChildIndex(ofParentAt index: Int) -> Int {
        return (2 * index) + 2
    }

    func parentIndex(ofChildAt index: Int) -> Int {
        return (index - 1) / 2
    }

    mutating func remove() -> Element? {
        guard !isEmpty else {
            return nil
        }
        elements.swapAt(0, count - 1)
        defer {
            siftDown(from: 0)
        }
        return elements.removeLast()
    }

    mutating func remove(at index: Int) -> Element? {
        guard index < elements.count else {
            return nil
        }
        if index == elements.count - 1 {
            return elements.removeLast()
        } else {
            elements.swapAt(index, elements.count - 1)
            defer {
            siftDown(from: index)
            siftUp(from: index)
            }
        return elements.removeLast()
      }
    }

    mutating func insert(_ element: Element) {
        elements.append(element)
        siftUp(from: elements.count - 1)
    }

    func index(of element: Element, startingAt i: Int) -> Int? {
        if i >= count {
            return nil
        }
        if sort(element, elements[i]) {
            return nil
        }
        if element == elements[i] {
            return i
        }
        if let j = index(of: element, startingAt: leftChildIndex(ofParentAt: i)) {
            return j
        }
        if let j = index(of: element, startingAt: rightChildIndex(ofParentAt: i)) {
            return j
        }
        return nil
    }

    mutating func siftDown(from index: Int) {
        var parent = index
        while true {
            let left = leftChildIndex(ofParentAt: parent)
            let right = rightChildIndex(ofParentAt: parent)
            var candidate = parent // 4
            if left < count && sort(elements[left], elements[candidate]){
                candidate = left // 5
            }
            if right < count && sort(elements[right], elements[candidate]) {
                candidate = right // 6
            }
            if candidate == parent {
                return // 7
            }
        elements.swapAt(parent, candidate) // 8
        parent = candidate
        }
    }

    mutating func siftUp(from index: Int) {
        var child = index
        var parent = parentIndex(ofChildAt: child)
        while child > 0 && sort(elements[child], elements[parent]) {
            elements.swapAt(child, parent)
            child = parent
            parent = parentIndex(ofChildAt: child)
        }
    }

}

