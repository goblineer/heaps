# Time Complexity: O(nlog(n))
# Space Complexity: Constant.
def heapsort(array)
  heap = MinHeap.new

  array.each do |item|
    heap.add(item, item)
  end

  result = []
  until heap.empty?
    result << item.remove
  end

  return result
end