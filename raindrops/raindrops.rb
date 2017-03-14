class Raindrops

  def self.convert(arg)
    answer = []
    if arg % 3 == 0
      answer.push 'Pling'
    end
    if arg % 5 == 0
      answer.push 'Plang'
    end
    if arg % 7 == 0
      answer.push 'Plong'
    end
    if arg % 3 != 0 and arg % 5 != 0 and arg % 7 != 0
      return arg.to_s
    end
    answer.join('')
  end

end

module BookKeeping
  VERSION = 3
end
