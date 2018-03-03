
class Robot

  attr_accessor :name

  def initialize
    @name = create_name
  end

  def create_name
    return [*('A'..'Z')].sample(2).join + [*(0..9)].sample(3).join
  end

  def name
    return @name
  end

  def reset
    @name = create_name
  end

end
