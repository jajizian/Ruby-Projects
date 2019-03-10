# Ruby Basics Part 3

class BookInStock

attr_accessor:isbn
attr_accessor:price

def initialize(isbn,price)
   
   @isbn=isbn
   @price=price
   
   raise ArgumentError, 'invalid isbn' unless isbn.eql?('') == false
   raise ArgumentError, 'invalid price' unless price > 0
    
end

def price_as_string 
    return "$%.2f" % price
end

end