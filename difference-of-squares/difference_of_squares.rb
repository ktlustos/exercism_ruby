class Squares

  attr_accessor :num

  def initialize(num)
    self.num = num
  end

  def square_of_sum
    sum = 0
    0.upto(num) do |i|
      sum += i
    end
    sum ** 2
  end

  def sum_of_squares
    sum = 0
    0.upto(num) do |i|
      sum += i ** 2
    end
    sum
  end

  def difference
    diff = square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 3
end
