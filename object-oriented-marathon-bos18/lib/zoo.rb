require_relative "cage"

class Zoo
  attr_reader :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = (1..10).map {Cage.new}
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    date >= @season_opening_date && date <= @season_closing_date
  end

  def add_animal(animal)
    @cages.select {|cage| cage.empty?}.first.animal = animal
  end

  def visit
    employee_greetings = @employees.map {|employee| employee.greet + "\n"}
    animal_greetings = @cages.select {|cage| !cage.empty?}.map {|cage| cage.animal.speak + "\n"}
    (employee_greetings + animal_greetings).join("")
  end
end
