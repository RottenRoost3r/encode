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

   def test_that_message_is_prepared
   		assert_equal("muffinman", prepare("MuffinMan"))
   		assert_equal("muffinman", prepare("Muffin Man"))
   		assert_equal("muffinman", prepare("Muffin Man!...?"))
   	end

   	def test_that_atoz_is_array
   		assert_equal(Array, atoz().class)
   	end

   	def test_that_atoz_rotates
   		assert_equal(["f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e"], atoe())
   	end
end