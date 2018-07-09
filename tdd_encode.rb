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

def atoz()
	atoz = [*"a".."z"]
end