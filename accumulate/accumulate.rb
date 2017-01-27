class Array
  def accumulate
    result = Array.new
    each_with_object([]) do |element, array|
      array.push(yield(element))
      result = array
    end
    result
  end
end
module BookKeeping
  VERSION = 1
end