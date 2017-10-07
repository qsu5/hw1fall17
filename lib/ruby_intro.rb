# When done, submit this entire file to the ICON HW1 Dropbox.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = 0
  arr.each{|a| result += a}
  return result
end

def max_2_sum arr
  # YOUR CODE HERE

  new = arr.sort
  max = new[-1] || 0
  max2 = new[-2] || 0
  # if max == nil
  #   max = 0
  # end
  # if max2 == nil
  #   max2 = 0
  # end
  return max+max2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return arr.combination(2).any?{|a,b|  a+b == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+ name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  match = (s =~ /([aeiou]|[^a-z])/i) 
  if match == 0 or s ==""
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  num = s.to_i(2)
  test = num % 4
  if s == "0" or (test == 0 and num != 0)
    return true
  else
    return false
  end
    
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize (isbn, price)
    if isbn != ""
      @isbn = isbn
    else
      raise ArgumentError, "isbn is an empty string"
    end
    if price > 0.0
      @price = price 
    else
      raise ArgumentError, "price is negative value"
    end
  end
  def isbn 
    @isbn
  end
  def price
    @price
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  def price=(new_price)
    @price = new_price
  end
  def price_as_string
    return sprintf("$%.2f", @price)
  end
end
