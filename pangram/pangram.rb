class Pangram

  def self.pangram?(phrase)
    alpha = ('a'..'z').to_a
    result = nil
    phrase = phrase.downcase.gsub(/\W+_+/, '')
    alpha.length.times do |i|
      if phrase.include? alpha[i].to_s
        result = true
      else
        result = false
        return result
      end
    end
    result
  end

end


module BookKeeping
  VERSION = 4
end
