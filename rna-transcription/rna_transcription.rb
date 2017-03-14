class Complement

  def self.of_dna(arg)
    array = []
    arg.length.times do |i|
      if arg[i] == 'C'
        array.push 'G'
      elsif arg[i] == 'G'
        array.push 'C'
      elsif arg[i] == 'T'
        array.push 'A'
      elsif arg[i] == 'A'
        array.push 'U'
      else
        return ''
      end
    end
    array.join ''
  end

end

module BookKeeping

  VERSION = 4

end
