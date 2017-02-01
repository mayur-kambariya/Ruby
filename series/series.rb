class Series
  def initialize(series_string)
    @series = series_string
  end
  def slices(slice)
    raise ArgumentError if slice > @series.length
    slices_array = Array.new
    (0..(@series.length - slice)).each do |i|
      slices_array.push(@series[i...(i + (slice))])
    end
    slices_array
  end
end