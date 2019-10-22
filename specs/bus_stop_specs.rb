require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop.rb')
require_relative('../person.rb')


class TestBusStop < MiniTest::Test

  def setup
    @person1 = Person.new("Eduardo", 40)
    @person2 = Person.new("Yousef", 23)
    @stop1 = BusStop.new("Ocean Terminal")
  end


def test_add_person_to_queue
  @stop1.add_person_to_queue(@person1)
  number_of_people_at_queue = @stop1.queue.length
  assert_equal(1, number_of_people_at_queue)

end





end
