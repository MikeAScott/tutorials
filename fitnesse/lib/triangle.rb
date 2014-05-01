class Triangle
  
  def initialize(a,b,c)
    @a = a.to_i
    @b = b.to_i
    @c = c.to_i
    puts "a=#{@a} b=#{@b} c=#{@c}"
  end

  def type
    case
    when sum_of_two_sides_is_less_than_or_equal_to_third?
        'Not a triangle'
    when all_sides_equal?
        'Equilateral'
    when two_sides_are_equal? 
        'Isosceles'
    else
        'Scalene'
    end
  end
    
  def sum_of_two_sides_is_less_than_or_equal_to_third?
    @a+@b<=@c || @b+@c<=@a || @a+@c<=@b
  end
  
  def all_sides_equal?
    @a==@b && @b==@c
  end
  
  def two_sides_are_equal?
    @a==@b || @b==@c || @a==@c
  end
  
  def is_right_angled?
    @a*@a + @b*@b == @c*@c
  end
    
end