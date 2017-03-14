class Hamming

  def self.compute(arg1, arg2)
    count = 0
    unless arg1.length != arg2.length
      arg1.length.times do |i|
        if arg1[i] == arg2[i]
          count += 0
        else
          count += 1
        end
      end
    else
      raise ArgumentError
    end
    return count
  end

end

module BookKeeping

  VERSION = 3

end
