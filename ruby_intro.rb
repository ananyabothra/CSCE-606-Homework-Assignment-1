# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  arr.max(2).reduce(0, :+)
end

def sum_to_n? arr, n
  if arr.size<2
    return false 
  else 
    (0..arr.size-1).each do |x|
      (x+1..arr.size-1).each do |y|
       if arr[x] + arr[y] == n
         return true
       end
      end
    end
    return false
  end
end
# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if ((s.match(/^[10]*00$/)) or (s.length==1 and s[0]=='0'))
    return true
  else
    return false
  end
end


# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize isbn, price
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    format("$%.2f", @price)
  end
end
