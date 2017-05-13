# p047classaccess.rb  
class ClassAccess  
  def m1          # this method is public
    self.m2  
  end  
  protected  
    def m2        # this method is protected
      self.m3  
    end  
  private  
    def m3        # this method is private  
    end  
end  
ca = ClassAccess.new  
ca.m1  
#ca.m2  
#ca.m3   
