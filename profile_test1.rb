require 'pry'

module Serializable

  def object_to_hash
    instance_variables.each do |var|    #instance_variable is a method avail on all objects
      puts instance_variable_get(var)
    end
  end
end



class Profile

  include Serializable # Ruby world calls this is called a mix-in 

  def initialize(name,email)
    @name = name
    @email = email
  end
  
  def valid_email(email)
    true
  end

#### START of what the attr_accessor does 
  def email
    @email
  end

  def email=(new_email)
    if valid_email(email)
      @new_email = new_email
    else
      @new_email = @new_email
    end
  end
#### END of what the attr_accessor does 

end


p = Profile.new("rene","rene.cravioto@gmail.com")
p.object_to_hash
binding.pry
puts
