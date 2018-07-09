require "minitest/autorun"
require_relative "tdd_encode.rb"

class TestYourEncoding < Minitest::Test

   #  def test_assert_that_1_equals_1
   #      assert_equal(1, 1)
   #  end

  	# def test_that_message_was_converted
   #  	assert_equal("fgh", encoder("abc"))
   #  end

   #  def test_that_caps_too
   #  	assert_equal("FGH", encoder("ABC"))
   #  end

   #  def test_that_message_was_decoded
   #  	assert_equal("abc", decoder("fgh"))
   #  end

   #  def test_that_caps_decode_too
   #  	assert_equal("ABC", decoder("FGH"))
   #  end

   #  def test_that_other_letters
   #  	assert_equal("e", encoder("z"))
   #  end
   def test_that_result_is_string
   		assert_equal(String, stringy().class)
   	end
end