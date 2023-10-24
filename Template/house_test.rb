require 'test/unit'
require_relative 'glass_house'
require_relative 'wood_house'

class HouseTest < Test::Unit::TestCase
  def test_builds_a_glass_house
    output = capture_output do
      GlassHouse.new.build_house
    end
    expected = "Building glass roof\nBuilding glass walls\nBuilding glass doors\nBuilding glass windows\nBuilding glass rooms\n"
    assert_equal expected, output.first
  end

  def test_builds_a_wood_house
    output = capture_output do
      WoodHouse.new.build_house
    end
    expected = "Building wood roof\nBuilding wood walls\nBuilding wood doors\nBuilding wood windows\nBuilding wood rooms\n"
    assert_equal expected, output.first
  end
end
