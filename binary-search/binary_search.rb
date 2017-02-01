class BinarySearch
  def initialize(sort_array)
    @sort_array = sort_array
    raise ArgumentError if @sort_array != @sort_array.sort
    @low = 0
    @high = @sort_array.length-1
  end

  def list
    @sort_array
  end
  
  def middle
    (@low + @high) / 2
  end
  
  def search_for(search_element)
    @low = 0
    @high =@sort_array.length-1
    while @low <= @high
      if @sort_array[middle] == search_element
        return middle
      elsif @sort_array[middle] < search_element
        @low= middle + 1
      else
        @high = middle - 1
      end
    end
      raise RuntimeError
  end
end
