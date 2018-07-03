require "minitest/autorun"
require_relative "tdd_encode.rb"

class TestYourEncoding < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    # def test_assert_that_string_is_converted
    # 	assert_equal(Array, ("").class)
    # end

    
    # def test_that_a_returns_f
    # 	assert_equal("f", funk("a"))
    # end

    # def test_that_words_encrypt
    # 	assert_equal("fgh", funk("abc"))
    # end

    # def test_that_words_decrypt
    # 	assert_equal("abc", bunk("fgh"))
    # end
    
end