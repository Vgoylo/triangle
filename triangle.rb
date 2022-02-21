def triangle(a, b, c)
  #a + b > c && a + c > b && b + c > a ? 'Yes triangle' : 'No triangle'

  if a + b > c && a + c > b && b + c > a
    puts 'Yes triangle'
  else
    puts 'No triangle'
  end
end

p triangle(19, 10, 20)
