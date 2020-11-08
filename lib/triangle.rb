class Triangle
  attr_accessor :side_1, :side_2, :side_3
  def initialize (side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  def kind
    #if side1, side2, side3 are <=0, throw an error
     #|| 
    #the sum of any two are !> the third one, throw an error
      if @side_1<= 0 || @side_2<= 0 || @side_3 <= 0 ||side_1 + side_2<= side_3 || side_2 + side_3 <= side_1 || side_1 + side_3 <= side_2   
      
        raise TriangleError
      
    
      elsif @side_1 == @side_2 && @side_1 == @side_3
      :equilateral

      elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_1 != @side_3
      :scalene
      elsif @side_2 == @side_3 
      :isosceles
      else 
      :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "That's not a valid triangle!"
    end
  end
end
