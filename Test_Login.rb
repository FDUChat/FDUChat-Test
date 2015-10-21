require "HTTParty"
require "test/unit"
require_relative 'Login.rb'

class TestPost < Test::Unit::TestCase

  def test_log
    bc = Login.new()
    info = bc.set_data('derek1','qwer')
    options = {
        body: info
    }
    re = bc.log(options)
    p re
    assert_equal('{"id":201,"content":"login success"}',re,"something is wrong!")

  end

end
