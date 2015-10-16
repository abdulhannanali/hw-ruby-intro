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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
