class Bus
  attr_reader :name, :capacity, :passengers

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  def add_passenger(name)
    @passengers << name
  end

  def yell_at_passengers
    name_upcased = []
    @passengers.each { |passenger| name_upcased << passenger.upcase }

    name_upcased
  end

  def number_of_passengers
    @passengers.size
  end

  def over_capacity?
    number_of_passengers > @capacity
  end
end