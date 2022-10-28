require 'pry'
class Triangle
  # write code here
  def initialize(a,b,c)
  @a=a
  @b=b
  @c=c
  end


  def kind
    if !@a.positive? || !@b.positive? || !@c.positive?
      raise TriangleError
    elsif @a +@b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    end

    if @a == @b
      if @b == @c
        :equilateral
      else
      :isosceles
      end
      elsif @b == @c || @c == @a
        :isosceles
      else
        :scalene
      end
    end
    class TriangleError < StandardError
    end

    

    end
