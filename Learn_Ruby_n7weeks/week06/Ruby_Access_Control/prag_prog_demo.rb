class Demo
  private
    def privMethod
    end
  protected
    def protMethod
    end
  public
    def pubMethod
    end
  def Demo.classMethod
  end
  CONST = 1.23
end

puts 'Private Instance Methods :'
p Demo.private_instance_methods	              #»	["privMethod"]
puts 'Protected Instance Methods :'
p Demo.protected_instance_methods	            #»	["protMethod"]
puts 'Public Instance Mthods'
p Demo.public_instance_methods	              #»	["pubMethod"]
puts 'Singleton Methods'
p Demo.singleton_methods	                    #»	["classMethod"]
puts 'Constants'
p Demo.constants - Demo.superclass.constants	#»	["CONST"]
 
