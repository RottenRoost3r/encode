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

   	def test_that_message_is_converted
   		assert_equal(["m", "u", "f", "f", "i", "n", "m", "a", "n"], convert("MuffinMan"))
   		assert_equal(["m", "u", "f", "f", "i", "n", "m", "a", "n"], convert("Muffin Man"))
   		assert_equal(["m", "u", "f", "f", "i", "n", "m", "a", "n"], convert("Muffin Man!...?"))
   	end

   	def test_that_atoz_is_array
   		assert_equal(Array, atoz().class)
   	end

   	def test_that_atoz_rotates
   		assert_equal(["f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e"], atoe())
   	end

   	def test_that_message_is_indexed
   		assert_equal([0, 1, 2], indexed_message("abc"))
   	end

   	def test_assert_decrypted_message_returns_as_indexed_array
	 	assert_equal([8, 3, 8, 18, 11, 8, 10, 4, 18, 4, 2, 17, 4, 19, 2, 14, 3, 4, 18], indexed_encrypted_message("ninxqnpjxjhwjyhtijx"))
	end

	def test_assert_indexed_message_returns_as_encrypted_secret_code
		assert_equal("e", encrypter("z"))
		assert_equal("f", encrypter("a"))
		assert_equal("fghf", encrypter("abc!..>A"))
	end
end