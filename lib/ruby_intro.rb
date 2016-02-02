# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each { |a| sum += a}
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    arr.sort! {|x, y| y <=> x}
    arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
    false
  else
    neoArr = arr.permutation(2).to_a
    setter = false
    neoArr.each {|x| if sum(x) == n then setter = true end}
    setter
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s[0] =~ /[[:alpha:]]/
    ans = (s[0]).upcase != 'A' and s[0].upcase != 'E' and s[0].upcase != 'I' and s[0].upcase != 'O' and s[0].upcase != 'U'
  else
    ans = false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /\A[-+]?[0-9]+\z/
    if s.to_i % 4 == 0
      ans = true
    else
      ans = false
    end
  else
    ans = false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError, 'Input error'
    elsif price <= 0
      raise ArgumentError, 'Input error'
    else
      @isbn=isbn
      @price=price
    end
  end
  
  # method that gets the value of @color
  def isbn
    @isbn
  end
 
  # method that sets the value of @color
 def isbn=(str)
   @isbn = str
 end
 
 # method that gets the value of @color
  def price
    @price
  end
 
  # method that sets the value of @color
 def price=(str)
   @price = str
 end
 
 def price_as_string()
   ans = "$"+('%.2f' %price).to_s
 end
 
end
