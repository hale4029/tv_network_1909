require './lib/character'
require './lib/show'
require './lib/network'

class Network
  attr_accessor :shows, :name

  def initialize(network_name)
    @name = network_name
    @shows = []
  end

  def add_show(show_name)
    @shows << show_name
  end

  def highest_paid_actor
    characters = @shows.map { |show| show.characters }.flatten
    highest_paid = characters.sort_by { |char| char.salary}
    highest_paid.last.actor
  end


end
