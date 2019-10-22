require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')


class PersonTest < MiniTest::Test


    def setup()

        @person1 = Person.new("Eduardo", 40)
        @person2 = Person.new("Yousef", 23)

    end

    def test_name
      assert_equal("Eduardo", @person1.name)
    end


    def test_age
      assert_equal(40, @person1.age)
    end




end
