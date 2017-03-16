class Array

  def accumulate(&block)
    result = []
    self.each do |i|
      result << yield(i)
    end
    result
  end

end

module BookKeeping
  VERSION = 1
end
