class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def valid?
    a + b > c && a + c > b && b + c > a
  end

  def format
    @triangle = Triangle.new(12, 5, 16)
  end
end
