require_relative 'observer'

class EmployeeObserver < Observer
  def update(subject)
    puts "Employee changed: #{subject.name} has salary #{subject.salary}"
  end
end
