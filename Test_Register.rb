require "HTTParty"
require "test/unit"
require_relative 'Register.rb'

class TestPost < Test::Unit::TestCase

  def test_reg
    ac = Register.new()
    data = ac.set_data('derek1','qwer1')
    options = {
        body: data
    }
    re = ac.reg(options)
    p re
    assert_equal('{"id":202,"content":"register success"}',re,"something is wrong!")

    end

end
