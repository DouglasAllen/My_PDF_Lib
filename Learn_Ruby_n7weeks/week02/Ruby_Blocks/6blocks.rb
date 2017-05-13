# The Book of Ruby - http://www.sapphiresteel.com

def myblock_function()
	yield 
end

a = "hello world"

#puts( a )

myblock_function{ puts( a )}

# so what is a now...?
#puts( a )

