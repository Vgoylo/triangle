class Triangle
  attr_accessor :a, :b, :c

  def initialize(a = nil, b = nil, c = nil)
    @a, @b, @c = a, b, c
  end

  def valid?
    if (a.is_a?(Integer) || a.is_a?(Float)) && (b.is_a?(Integer) || b.is_a?(Float)) && (c.is_a?(Integer) || c.is_a?(Float))
      a + b > c && a + c > b && b + c > a
    end
  end

  def format
    @triangle = Triangle.new(12, 5, 16)
  end
end
