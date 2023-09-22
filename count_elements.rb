class CountElements
  def initialize(array)
    @array = array
  end

  def perform()
    result = Hash.new
    @array.each { |element|
      if result.has_key?(element)
        result[element] += 1
      else
        result[element] = 1
      end
    }
    result
  end

  # Easier solution
  # def perform()
  #   @array.tally
  # end
end
