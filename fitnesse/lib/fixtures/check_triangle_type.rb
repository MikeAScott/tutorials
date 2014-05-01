require 'triangle'

module Fixtures
  class CheckTriangleType
  
    def initialize
      puts 'Initilized'
    end
    
    def set_a(val)
      @a=val
    end
      
    def set_b(val)
      @b=val
    end

    def set_c(val)
      @c=val
    end
    
    def type
      triangle = Triangle.new(@a,@b,@c)
      triangle.type
    end
  
  end
end