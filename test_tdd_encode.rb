require "minitest/autorun"
require_relative "tdd_encode.rb"

class TestYourEncoding < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_that_returns_string
    	assert_equal(String, funk.class)
    end

    def test_that_a_returns_f
    	assert_equal(f, funk(a))
    end
end