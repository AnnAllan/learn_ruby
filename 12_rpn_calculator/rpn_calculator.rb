class RPNCalculator
  attr_accessor :stack
  attr_accessor :value

  def initialize
    clear
  end

  def clear
    @stack = []
    @value = 0
    self
  end

  def push(*nums)
    nums.each do |num|
    @stack << (num).to_f
    end
    self
  end

  def calculate
    length = @stack.length
    right = @stack.pop
    left = @stack.pop
    if length >= 2
      @value = yield(left, right)
    elsif length == 1
      @value = yield(@value, right)
    else
      error_empty
    end
    @stack.push(@value)
  end


  def plus
    calculate do |left, right|
      left + right
    end
    self
  end

  def minus
    calculate do |left, right|
      left - right
    end
    self
  end

  def divide
    calculate do |left, right|
      left / right
    end
    self
  end

  def times
    calculate do |left, right|
      left * right
    end
    self
  end

  def error_empty
    raise "calculator is empty"
  end

  def tokens(string)
    string.split(" ").map do |token|
      if token.match(/\d/)
        token.to_i
      elsif ["+", "-", "*", "/"].include?(token)
        token.to_sym
      end
    end
  end

  def evaluate(string)
    tokens(string).each do |token|
      if token.to_s.match(/\d/)
        push(token)
      elsif [:+, :-, :*, :/].include?(token)
        case token
        when :+
          plus
        when :-
          minus
        when :*
          times
        when:/
          divide
        end
      end
    end
    value
  end



end
