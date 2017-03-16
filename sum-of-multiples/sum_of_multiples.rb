class SumOfMultiples

  def initialize(*args)
    @args = *args
  end

  def to(num)
    sum = 0
    intermediate = []
    1.upto(num - 1) do |i|
      @args.map {|arg| intermediate << i if i % arg == 0 && !intermediate.include?(i)}
    end
    sum = intermediate.inject(0) {|sum, x| sum + x}
  end

end
