def funk(something)
	something.tr('A-Za-z', 'F-ZA-Ef-za-e')
end

def bunk(more)
	more.tr('F-ZA-Ef-za-e', 'A-Za-z')
end