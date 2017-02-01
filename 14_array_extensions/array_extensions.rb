class Array

  def sum
    return 0 if self.empty?
    self.reduce {|total, x| total += x}
  end

  def square
    return self if self.empty?
    self.map {|x| x**2}
  end

  def square!
    self.map! {|x| x**2}
  end
end
