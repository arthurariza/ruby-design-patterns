require_relative 'task'
require_relative 'composite_task'
require 'test/unit'


class MakeCake < CompositeTask
  def initialize
    super('Make cake')
    add_sub_task( MakeBatter.new )
    add_sub_task( FillPan.new )
    add_sub_task( Bake.new )
    add_sub_task( Frost.new )
    add_sub_task( LickSpoon.new )
  end
end

class MakeBatter < CompositeTask
  def initialize
    super('Make batter')
    add_sub_task( AddDryIngredients.new )
    add_sub_task( AddLiquids.new )
    add_sub_task( Mix.new )
  end

  def get_time_required
    1800.0
  end
end

class AddDryIngredients < Task
  def initialize
    super('Add dry ingredients')
  end

  def get_time_required
    30.0
  end
end

class AddLiquids < Task
  def initialize
    super('Add liquids')
  end

  def get_time_required
    30.0
  end
end

class Mix < Task
  def initialize
    super('Mix that batter up!')
  end

  def get_time_required
    30.0
  end
end

class FillPan < Task
  def initialize
    super('Fill pan')
  end

  def get_time_required
    30.0
  end
end

class Bake < Task
  def initialize
    super('Bake')
  end

  def get_time_required
    3600.0
  end
end

class Frost < Task
  def initialize
    super('Frost')
  end

  def get_time_required
    30.0
  end
end

class LickSpoon < Task
  def initialize
    super('Lick spoon')
  end

  def get_time_required
    15.0
  end
end

class CompositeTest < Test::Unit::TestCase
  def test_composite
    cake = MakeCake.new
    assert_equal 5475.0, cake.get_time_required
  end
end
