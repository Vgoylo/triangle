class Triangle
  attr_accessor :a, :b, :c

  def initialize(a = nil, b = nil, c = nil)
    @a, @b, @c = a, b, c
  end

  def valid?
    a + b > c && a + c > b && b + c > a if check_classes?
  end

  private

  def check_classes?
    check_class?(a) && check_class?(b) && check_class?(c)
  end

  def check_class?(inctanse)
    inctanse.is_a?(Integer) || inctanse.is_a?(Float)
  end
end
