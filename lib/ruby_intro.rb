
# Part 1

def sum(array)
  result = 0
  array.each do |num|
    result += num
  end
  return result
end

def max_2_sum(array)
  result = 0
  #initialize temporary numbers as lower than you'd expect from input.
  #Should probably use some sort of constant here. 
  num1 = -99999
  num2 = -99999
  if array.length > 2
    # for each element in the array, determine if it is greater than currently
    # stored num1 and num2, or greater than num2 only. This keeps track of the
    # two greatest numbers in the array. 
    array.each do |num|
      if num > num1 && num > num2
        num1 = num
      elsif num > num2
       num2 = num
      else
        next
      end
    end
  elsif array.empty?
    return 0
  elsif array.length == 1
    return array[0]
  end
  result = num1 + num2
  return result
end

def sum_to_n?(array, n)
  # create a new array to hold the sums of elements in the input array
  temp = Array.new
  # Check conditions outlined in the assignment
  if array.empty? || array.length == 1
    return false
  else
    # nested loop to add together each pair of elements in the array
    for i in 0..array.length
      for x in i+1..array.length-1
      # Store the sum of index i and i+1 in the temp array 
      temp.push(array[i] + array[x])
      end
    end
  end
  # check if input n exists in the temp array, return true or false.
  return temp.include? n
end
    

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  if s[0] =~ /[[:alpha:]]/
    if s[0] !~/[[aeiouAEIOU]]/
      return true
    end
  else return false
  end 
end

def binary_multiple_of_4?(s)
  # regex here = from start of string, any amount of zeroes or ones, followed by
  # a group of two zeroes at the end of the string. Special exception for single 
  # zero. Zero is a multiple of every number, but I can't figure out regex to
  # filter it out. 
  if s =~ /^[01]*(00)$/ || s == "0"
    return true
  else
    return false
  end
  
end

# Part 3

class BookInStock
    
  attr_accessor :isbn
	attr_accessor :price
	
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError if isbn.empty? || price <= 0
  end
  
  
  def price_as_string
    return "$" + '%.2f' % @price
  end
  
end
