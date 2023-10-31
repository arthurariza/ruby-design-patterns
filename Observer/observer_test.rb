require 'test/unit'
require_relative 'employee_observer'
require_relative 'employee'

class ObserverTest < Test::Unit::TestCase
  def setup
    @employee_observer = EmployeeObserver.new

    @employee = Employee.new('John', 1000)
    @employee.add_observer(@employee_observer)

    @expected = "Employee changed: John has salary 2000\n"
  end

  def test_it_notifies_employee_observer
    output = capture_output do
      @employee.salary=(2000)
    end

    assert_equal @expected, output.first
  end

  def test_it_only_notifies_observer_when_salary_changes
    output = capture_output do
      @employee.salary=(1000)
    end

    assert_equal '', output.first
  end
end
