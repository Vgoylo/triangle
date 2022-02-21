class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def triangle
    a + b > c && a + c > b && b + c > a ? 'True' : 'False'
  end
end
