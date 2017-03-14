class Grains

  def self.square(num)
    grains = 0
    if num == 1
      grains = 1
    elsif num == 2
      grains = 2
    elsif num <= 64 && num > 2
      grains += 2 ** (num - 1)
    else
      raise ArgumentError
    end
    grains
  end

  def self.total
    total = 0
    (1..64).each do |n|
      total += square(n)
    end
    total
  end

end

module BookKeeping
  VERSION = 1
end
