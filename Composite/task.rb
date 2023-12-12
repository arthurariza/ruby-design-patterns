class Task
  attr_reader :name
  attr_accessor :parent

  def initialize(name)
    @name = name
    @parent = parent
  end

  def get_time_required
    0.0
  end
end
