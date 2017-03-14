class Robot

  attr_reader :name
  attr_accessor :previous_names

  @@previous_names = []

  def initialize
    @name = random_name
  end

  def reset
    @name = random_name
  end

  def random_name
    letters = ('A'..'Z').to_a
    numbers = (0..9).to_a

    robot_name = letters.sample(2).join + numbers.sample(3).join

    if !@@previous_names.include? robot_name
      @@previous_names << robot_name
      robot_name
    else
      random_name
    end
  end

end

module BookKeeping
  VERSION = 2
end
