require "minitest/autorun"
require_relative "tdd_encode.rb"

class TestYourEncoding < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_assert_that_converter_returns_array
    	assert_equal(Array, converter("").class)
    end

    def test_assert_that_converter_converts
    	assert_equal(["0", "1", "2"], converter("012"))
    end


    def test_assert_that_converter_works_inside_encoder
    	assert_equal(["0", "1", "2"], encoder("012"))
    end

    def test_that_converter_takes_spaces
    	assert_equal(["h", "e" ,"l", "l", "o", " ", "w", "o", "r", "l", "d"], converter("hello world"))
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