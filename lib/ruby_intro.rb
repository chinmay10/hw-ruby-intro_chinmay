# frozen_string_literal: true

# Part 1

def sum(arr)
  return arr.sum
  
end

def max_2_sum(arr)
  return arr.max(2).sum
end

def sum_to_n?(arr, number)
  hm=Hash.new
  arr.each do |i|

    if hm.has_key?(number-i)
      return true
    else
      hm[i]=1
    end
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  if string.length==0
    return false
  end
  string=string.downcase
  vowel=['a','e','i','o','u']

  if vowel.include?string[0] or string[0]<"a" or string[0]>"z"
    return false
  end
  return true
end

def binary_multiple_of_4?(string)
  if string.length==0
    return false
  end
  n=0
  i=0
  loop do
    c=string[string.length-1-i]
    if c=="1" or c=="0"
      if c=="1"
        n=n+ 2**i
      end
    else
      return false
    end
    i+=1
    if i>=string.length
      break
    end
  end
  if n%4==0
    return true
  end
  return false
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    if isbn.length ==0 or price<=0
      raise ArgumentError
    end
    @isbn=isbn
    @price=price
  end
  
  def price_as_string
    return "$%.2f" % @price.round(2)
  end
  attr_accessor :isbn
  attr_accessor :price

  
end
