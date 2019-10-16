require './lib/character'
require './lib/show'

class Show
  attr_accessor :name, :creator, :characters

  def initialize(show_name, show_creator, characters)
    @name = show_name
    @creator = show_creator
    @characters = characters
  end

  def total_salary
    @characters.reduce(0) { |sum, character| (sum + character.salary) }
  end

end
