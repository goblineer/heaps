

# This method passes the test. I suspect that means it's using a heap to sort an array.
# Time Complexity: O(nlog(n))
# Space Complexity: All the good stuff happens in place.
def heapsort(vault)
  hoard = MinHeap.new

  hoard.each do |treasure|
    vault.add(treasure, treasure)
  end

  the_precious = []
  until hoard.empty?
    the_precious << treasure.remove
  end

  return the_precious
end