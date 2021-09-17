# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  
  
  for ele in arr
    sum += ele
  end
  
  return sum
end

def max_2_sum arr
  
  if arr.count == 0
    return 0
  
  elsif arr.count == 1
    return arr[0]
  
  else
    
    first  = arr[0]
    second = arr[1]
    
    for ele in arr
      if ele > first || ele == arr[0]
        first = ele 
        
      elsif ele > second
        second = ele
      end
      
    end  
    
    #puts "-----#{first} & #{second}-----"
    return (first + second)
    
  end
  
end

def sum_to_n? arr, n
  sum = 0
  
  for i in arr
    for j in arr
      if i != j && (i+j) == n
        #puts "true #{i}+#{j}"
        return true
      end
    end
  end
  
  return false

end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s == "" || s == '' || s[0] == ' '
    return false
  end
  
  pattern = /^[^aeiouAEIOU\W]/
  
  if s.scan(pattern).size > 0
    return true
  else
    return false
  end
  
end

def binary_multiple_of_4? s
  if s == " " || s == ' '
    returns false
  end
  
  pattern = /^[0-1]+$/
  if s.scan(pattern).size > 0
    if(s.to_i%4 == 0)
      return true
    end
  end
  
  return false
  
end

# Part 3

class BookInStock
  
  def initialize(isbn_num, price_num)
    if isbn_num == "" or isbn_num == '' or price_num <= 0 
      raise ArgumentError, "Bad argument"
      return
    end
    
    @isbn = isbn_num
    @price = price_num
    
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn=isbn
  end
  
  def price=(price)
    @price = price
  end
    
  
  
  
  
  def price_as_string()
    num = '%.2f' % (price)
    #puts "$#{num}"
    return "$#{num}"
  end
  
end
