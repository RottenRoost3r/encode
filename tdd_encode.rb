# def funk(something)
# 	something.tr('A-Za-z', 'F-ZA-Ef-za-e')
# end

# def bunk(more)
# 	more.tr('F-ZA-Ef-za-e', 'A-Za-z')
# end


# def encoder(something)
# 	new_var = ""
# 	arry = something.split("")
# 	arry.map do |x|
# 		ord_var = x.ord + 5
# 		new_var += ord_var.chr
# 	end
# 	new_var
# end

# def decoder(something)
# 	new_var = ""
# 	arry = something.split("")
# 	arry.map do |x|
# 		ord_var = x.ord - 5
# 		new_var += ord_var.chr
# 	end
# 	new_var
# end
def stringy()
	""
end

def prepare(message)
	message.downcase.gsub(/[^a-zA-Z0-9]/i, "")
end

def convert(message)
	prepare(message).split("")
end

def atoz()
	atoz = [*"a".."z"]
end

def atoe()
	atoz.rotate(5)
end

def indexed_message(message)
	indexed_message_arr = []
	convert(message).each do |letters|
		counter = 0
		atoz().each do |letters_1|
			if letters == letters_1
				indexed_message_arr << counter
			end
			counter += 1
		end
	end
	indexed_message_arr
end

def indexed_encrypted_message(message)
	indexed_encrypted_message_arr = []
	convert(message).each do |letters|
		counter = 0
		atoe().each do |letters_1|
			if letters == letters_1
				indexed_encrypted_message_arr << counter
			end
			counter += 1
		end
	end
	indexed_encrypted_message_arr
end

def encrypter(message)
	encrypted_arr = []
	indexed_message(message).each do |num|
		if num == atoe.index
			atoe[num]
		end
		encrypted_arr << atoe[num]
	end
	encrypted_arr.join
end

def decrypter(message)
	decrypted_arr = []
	indexed_encrypted_message(message).each do |num|
		if num == atoz.index
			atoz[num]
		end
		decrypted_arr << atoz[num]
	end
	decrypted_arr.join
end

