def ftoc(f)
  c = (f - 32) * (5.0/9.0)
  return c
end

def ctof(c)
  f = (c * 1.8) + 32
  return f
end
