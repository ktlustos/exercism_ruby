class RunLengthEncoding

  def self.encode(input)
    output = []
    input = input.split ''
    num = 1
    input.length.times do |i|
      if input[i] == input[i + 1]
        num += 1
      else
        output.push num if num > 1
        output.push input[i]
        num = 1
      end
    end
    output.join
  end

  def self.decode(input)
    output = []
    input.split ''
    input.length.times do |i|
      if input[i].match(/\d/)
        if input[i + 1].match(/\d/)
          (input[i].to_i * 10).times do
            output.push(input[i + 2])
          end
        else
          (input[i].to_i - 1).times do
            output.push(input[i + 1])
          end
        end
      else
        output.push input[i]
      end
    end
    output.join
  end

end

module BookKeeping
  VERSION = 2
end

# Work on scalable iteration.

intermediate = []
for i in input do
  if input[i] == 0
    intermediate.push i
  else
    if i.match(/\d/) && !input[i - 1].match(/\d/)
      intermediate.push i
    elsif i.match(/d/) && input[i - 1].match(/\d/)
      intermediate[i-1] << i
end
