class Triangle
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def type
    case
      when @a+@b<=@c || @b+@c<=@a || @a+@c<=@b
        'Not a triangle'
      when @a==@b && @b==@c
        'Equilateral'
      when @a==@b || @b==@c || @a==@c
        'Isosceles'
      else
        'Scalene'
    end
  end
  
  def is_right_angled?
    @a*@a + @b*@b == @c*@c
  end
end