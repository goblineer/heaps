# Time Complexity: O(nlog(n))
# Space Complexity: Constant.
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