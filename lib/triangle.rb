require 'pry'
require 'awesome_print'

class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind 
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0 || @side_1 + @side_2 < @side_3 || @side_1 + @side_3 < @side_2 ||@side_2 + @side_3 < @side_1
      raise TriangleError 
    end
    if @side_1 == @side_2 && @side_2 == @side_3
      return :equalateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      return :isosceles
    else return :scalene 
    end
  end

  class TriangleError < StandardError 

  end
end

triangle_equal = Triangle.new(1, 1, 1)
triangle_error = Triangle.new(0, 1, 4)
ap triangle_error.kind