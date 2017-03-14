class Sieve

  attr_accessor :num

  def initialize(num)
    self.num = num
  end

  def primes
    expected = []
    array = (2..num).to_a
    if num > 1
      for i in array do
        expected.push i
        for x in array do
          if x % i == 0 && x != i
            array.delete x
          end
        end
      end
    else
      return expected
    end
    expected
  end

end

module BookKeeping
  VERSION = 1
end
