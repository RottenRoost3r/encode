require "minitest/autorun"
require_relative "tdd_encode.rb"

class TestYourEncoding < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

  	def test_that_who_cares
    	assert_equal(["f", "g", "h"], encoder("abc"))
    end

end