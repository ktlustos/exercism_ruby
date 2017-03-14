class Year

  def self.leap?(year)
    leap = false
    if year % 4 == 0
      if year % 100 == 0
        leap = false
        if year % 400 == 0
          leap = true
        else
          leap = false
        end
      else
        leap = true
      end
    else
      return false
    end
    leap
  end

end

module BookKeeping
  VERSION = 2
end
