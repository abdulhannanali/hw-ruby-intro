# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each {|x| sum += x}
  sum
end

def max_2_sum arr
  return 0 if arr.size == 0
  return arr[0] if arr.size == 1
  
  arr.sort!
  
  arr[arr.length - 1] + arr[arr.length - 2]
end

def sum_to_n? arr, n
  found = false
  return false if arr.size <= 1
  
  arr.each_index do |x|
    arr.each_index do |y|
      found = true if (arr[x] + arr[y] == n && x != y)
    end
  end
  
  return found
end

# Part 2

def hello(name)
  "Hello, " << name
end

def starts_with_consonant? s
  cons = /[^aeiou]/
  
  # if the string starts with non letter or it's length is 0 return false
  return false if (/[\W]/.match(s[0]) != nil || s.length == 0)
  
  return true if cons.match(s[0].downcase) != nil
  
end

def binary_multiple_of_4? s
  # rejects strings that contain anything except 1 and 0
  return false if (/[^10]/.match(s) != nil || s.length == 0)
  
  return true if (s.to_i(2) % 4 == 0)
end

# Part 3

class BookInStock
  attr_accessor :price
  
  # getter and setter for the isb are not the default ones
  
  # attr_reader for isbn
  def isbn
    "isbn#{@isbn}"
  end
  
  # attr_writer for isbn
  def isbn=(setIsbn)
    @isbn = parseIsbn(setIsbn)
  end
  
  
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    end
    
    @isbn = parseIsbn(isbn)
    @price = price.to_f
  end
  
  def price_as_string
    return "$#{'%.2f' % @price}"
  end
  
  
  private
  def parseIsbn stringIsbn
    stringIsbn.scan(/\d+/).join("").to_i
  end
end
