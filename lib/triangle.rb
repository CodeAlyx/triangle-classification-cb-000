class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(a, b, c)
    @side_a = a
    @side_b = b
    @side_c = c
  end

  def kind
    if !(@side_a + @side_b > @side_c) || !(@side_a + @side_c > @side_b) || !(@side_c + @side_b > @side_a) || @side_a + @side_b + @side_c == 0
      raise TriangleError
    else
      if @side_a == @side_b && @side_a == @side_c
        return :equilateral
      elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
        return :isosceles
      else
        return :scalene
      end
    end
  end
end

class TriangleError < StandardError
  def message
    puts "The lengths given do not form a valid triangle."
  end
end
