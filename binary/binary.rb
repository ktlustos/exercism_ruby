class Binary

  def self.to_decimal(binary)
    count = 0
    decimal = 0
    unless binary.match(/[^01]/)
      binary.reverse.each_char do |i|
        decimal += (2 * i.to_i) ** count
        count += 1
      end
    else
      raise ArgumentError
    end
    binary.chars.last == '0' ? decimal - 1 : decimal
  end

end

module BookKeeping
  VERSION = 3
end
