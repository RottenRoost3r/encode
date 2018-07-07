# def funk(something)
# 	something.tr('A-Za-z', 'F-ZA-Ef-za-e')
# end

# def bunk(more)
# 	more.tr('F-ZA-Ef-za-e', 'A-Za-z')
# end


def encoder(something)
	arry = something.split("")
	arry.map do |x|
		ord_var = x.ord + 5
		ord_var.chr
	end
end