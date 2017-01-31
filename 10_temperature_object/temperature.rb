class Temperature
  def initialize(hash = {})
          @hash = hash
  end

  def in_fahrenheit
    if @hash.has_key?(:f)
      return @hash[:f]
    elsif @hash.has_key?(:c)
      temp_c = @hash[:c].to_s.to_f
      return ctof(temp_c)
    end
  end


  def in_celsius
    if @hash.has_key?(:c)
      return @hash[:c]
    elsif @hash.has_key?(:f)
      temp_f = @hash[:f].to_s.to_f
      return ftoc(temp_f)
    end
  end

  def self.from_celsius(temp)
    Temperature.new({c: temp})
  end

  def self.from_fahrenheit(temp)
    Temperature.new({f: temp})
  end

  def ftoc(f)
    c = (f - 32) * (5.0/9.0)
    return c
  end

  def ctof(c)
    f = (c * 1.8) + 32
    return f
  end

end

class Celsius < Temperature
  def initialize(num, hash = {})
    @hash = hash
    @hash[:c] = num
  end

  def in_fahrenheit
    super
  end

  def in_celsius
    super
  end
end

class Fahrenheit < Temperature
  def initialize(num, hash = {})
    @hash = hash
    @hash[:f] = num
  end

  def in_fahrenheit
    super
  end

  def in_celsius
    super
  end
end
