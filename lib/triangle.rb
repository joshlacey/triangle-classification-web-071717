require 'pry'
class Triangle

  attr_accessor :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end

  def kind
    case self.inequality_theorem && @sides.all?{|num| num > 0}
      when true
        #binding.pry
        case @sides.uniq.length
          when 1
            :equilateral
          when 2
            :isosceles
          when 3
            :scalene
        end
      else
        raise TriangleError
    end
  end

  def inequality_theorem
    a = @sides[0]
    b = @sides[1]
    c = @sides[2]
    a + b > c && b + c > a && a + c > b
  end
#binding.pry

end

class TriangleError < StandardError

end
