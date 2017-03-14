class Phrase
  attr_accessor :phrase

  def initialize(phrase)
    self.phrase = phrase
  end

  def word_count
    array = phrase.downcase.split(/[^\w']/).reject{|a| a.empty?}
    for i in array do
      i.gsub!(/\W+\z/, '')
      i.gsub!(/\A\W/, '')
    end
    hash = {}
    array.each do |i|
      if !hash.include? i
        hash[i] = 1
      else
        hash[i] += 1
      end
    end
    hash
  end
end

module BookKeeping
  VERSION = 1
end
