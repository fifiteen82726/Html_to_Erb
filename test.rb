# turn <ima... > to image_tag(...)
# put <ima... > to input variable
require 'nokogiri'         
   
input = %q(<img src="path/test.png" class ="btn btn-primary" alt ="alt-attribute">)
page = Nokogiri::HTML(input)   
img = page.css('img')[0]
src =  ""
alt =  ""
class_atr = ""
src =  img['src']
alt =  img['alt']
class_atr = img['class']
result = "<%= image_tag(\'" + src + '\', :class => \'' + class_atr + '\', :alt => \'' + alt + '\')%>'
p result

   