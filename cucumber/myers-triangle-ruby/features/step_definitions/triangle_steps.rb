# Triangle Steps
begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end 
require 'cucumber/formatter/unicode'
require 'triangle'

# Create a triangle with sides (a,b,c)
# e.g: When the sides are 1,2,3  
When(/^the sides are (.*),(.*),(.*)$/) do |a,b,c|
  @triangle = Triangle.new a.to_i,b.to_i,c.to_i

end

Then(/^the type of triangle is "(.*?)"$/) do |expected|
  @triangle.type.should == expected
end

Then(/^the triangle is right angled$/) do
  @triangle.is_right_angled?.should be_true
end


