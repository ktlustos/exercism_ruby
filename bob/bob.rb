class Bob

  def self.hey(remark)
    if remark.upcase == remark
      if remark.upcase == remark.downcase
        if remark.include?('?') && remark.split('').last == '?'
          response = 'Sure.'
        elsif !remark.match(/\w+/)
          response = 'Fine. Be that way!'
        else
          response = 'Whatever.'
        end
      else
        response = 'Whoa, chill out!'
      end
    elsif remark.include?('?') && remark.split('').last == '?'
      response = 'Sure.'
    elsif remark.match(/\w+/) && remark.length > 0
      response = 'Whatever.'
    else
      response = 'Fine. Be that way!'
    end
    response
  end

end
