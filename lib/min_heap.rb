class HeapNode
  attr_reader :key, :value

  def initialize(key, value)
    @key = key
    @value = value
  end
end

class MinHeap

  def initialize
    @store = []
  end

  # Time Complexity: ? TODO: Answer this.
  # Space Complexity: ? TODO: Answer this. It's done in place.
  def add(key, value = key)
    node = HeapNode.new(key, value)
    @store.push(node)
    heap_up(@store.length - 1)
  end

  # Time Complexity: TODO: Answer this.
  # Space Complexity: TODO: Answer this. It's done in place.
  def remove()
    return nil if !@store

    swap(0, @store.length - 1)
    nope = @store.pop

    heap_down(0)
    return nope.value
  end


  # Used for Testing
  def to_s
    return "[]" if @store.empty?

    output = "["
    (@store.length - 1).times do |index|
      output += @store[index].value + ", "
    end

    output += @store.last.value + "]"

    return output
  end

  # Time complexity: Exceedingly fast.
  # Space complexity: One bit.
  def empty?
    !@store
  end

  private

  # Time complexity: TODO: Answer this.
  # Space complexity: TODO: Compares all the things one after another. Swapper stores wee variables.
  def heap_up(i)
    return if i == 0

    pnode = (i-1) / 2
    if @store[i].key < @store[pnode].key
      swap(i, pnode)
      heap_up(pnode)
    end
  end

  def heap_down(i)
    li = i*2+1
    ri = i*2+2

    if ri < @store.length

      min = @store[li].key < @store[ri].key ? li : ri

      if @store[i].key > @store[min].key
        swap(i, min)
        heap_down(min)
      end
    elsif li < @store.length
      if @store[i].key > @store[li].key
        swap(i, li)
      end
    end
  end

  def swap(index_1, index_2)
    temp = @store[index_1]
    @store[index_1] = @store[index_2]
    @store[index_2] = temp
  end
end
