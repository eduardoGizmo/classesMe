class Bus

  attr_reader :route, :destination, :passengers

  def initialize(route, destination)

    @route = route
    @destination = destination
    @passengers = []

  end


  def return_string
    return "Brum Brum"
  end

  def number_of_passengers
    return @passengers.length
  end

   def pick_up(passenger)
     @passengers.push(passenger)
   end


   def drop_off(passenger)
     @passengers.delete(passenger)
   end

   def empty
      @passengers = []
   end

   def pick_up_from_stop(stop1)
    @passengers.push(stop1.queue)
    stop1.empty_queue

   end


end
