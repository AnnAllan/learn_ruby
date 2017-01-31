def add(a, b)
  sum = a + b
end

def subtract(a, b)
  diff = a - b
end

def sum(input)
  total = 0
  (input.length).times do |x|
    total += input[x]
  end
  return total
end

def multiply(a, *b)
  product = 1
  b.length.times do |x|
    product *= b[x]
  end
  product *=a
  return product
end

def power(a, b)
  pow = a ** b
end

def factorial(a)
  if a == 0
    b = 0
  else
  	b = 1
  	while a > 1 do
  		b = a * (a - 1) * b
  		a -= 2
  	end
  end
	return b
end
