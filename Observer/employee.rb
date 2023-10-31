require_relative 'subject'

class Employee
  include Subject

  attr_reader :name, :salary

  def initialize(name, salary)
    super()
    @name = name
    @salary = salary
  end

  def salary=(new_salary)
    return if @salary == new_salary

    @salary = new_salary
    notify_observers
  end
end
