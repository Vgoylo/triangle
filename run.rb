require_relative 'triangle'

triangle = Triangle.new(12, 5, 16)

if triangle.valid?
  p 'Triangle exists'
else
  p 'Triangle does not exist'
end
