

class Character
  attr_accessor :name, :salary, :actor

  def initialize(hash={})
    @name = hash[:name]
    @salary = hash[:salary]
    @actor = hash[:actor]
  end

end
