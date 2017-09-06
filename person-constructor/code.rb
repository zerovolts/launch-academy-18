class Person
  attr_reader :first_name, :last_name, :middle_name

  def initialize(name, last_name = nil, middle_name = nil)
    if middle_name == nil
      if last_name == nil
        full_name = name.split(' ')
        if full_name.length == 2
          @first_name, @last_name = full_name
        elsif full_name.length == 3
          @first_name, @middle_name, @last_name = full_name
        end
      else
        @first_name = name
        @last_name = last_name
      end
    else
      @first_name = name
      @middle_name = middle_name
      @last_name = last_name
    end
  end

  def print_name()
    if @middle_name
      puts @first_name + ' ' + @middle_name + ' ' + @last_name
    else
      puts @first_name + ' ' + @last_name
    end
  end
end

person1 = Person.new("Zach", "Stone", "E")
person1.print_name

person2 = Person.new("Zach E Stone")
person2.print_name
