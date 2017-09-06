class Theater
  def initialize(seats)
    @seats = seats
    @patrons = 0
  end

  def admit!(people = 1)
    if @patrons + people <= @seats
      @patrons += people
    else
      puts "Too many people!"
    end
  end

  def record_walk_outs!(people = 1)
    if @patrons - people >= 0 # just to make sure
      @patrons -= people
    end
  end

  def at_capacity?
    @seats == @patrons
  end
end
