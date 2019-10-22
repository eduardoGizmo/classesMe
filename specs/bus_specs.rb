require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')

class BusTest < MiniTest::Test


    def setup
      @bus = Bus.new(30, "Ocean Terminal")
      @passenger1 = Person.new("Yousef", 23)
      @passenger2 = Person.new("Eduardo", 40)
      @stop1 = BusStop.new("Ocean Terminal")
    end


    def test_return_string
      assert_equal("Brum Brum", @bus.return_string )
    end

    def test_number_of_passengers
      assert_equal(0, @bus.number_of_passengers)
    end

    def test_pick_up_passenger
      @bus.pick_up(@passenger1)
      assert_equal(1, @bus.number_of_passengers)
    end

    def test_remove_passenger
      @bus.pick_up(@passenger1)
      @bus.drop_off(@passenger1)
      assert_equal(0, @bus.number_of_passengers)
    end

    def test_empty
      @bus.pick_up(@passenger1)
      @bus.pick_up(@passenger2)
      assert_equal(0, @bus.empty.length)
    end

    def test_pick_up_from_stop

      @stop1.add_person_to_queue(@passenger1)
      @bus.pick_up_from_stop(@stop1)

      assert_equal(1, @bus.number_of_passengers)
      assert_equal(0, @stop1.queue.length)


    end

end
