require './lib/character'
require 'minitest/autorun'
require 'minitest/pride'

class CharacterTest < Minitest::Test

  def setup
    @character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_it_exists
    assert_instance_of Character, @character
  end

  def test_name
    assert_equal "KITT", @character.name
  end

  def test_actor
    assert_equal "William Daniels", @character.actor
  end

  def test_salary
    assert_equal 1_000_000, @character.salary
  end

end
