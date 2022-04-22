module Validation

def validate(name, presence:true)
  if name == nil || name == ""
    newEr =  "has not to be empty"
    puts newEr
  else 
    newEr = ""
  end
  return newEr
end

def valid?
  if newEr == ""
    return true
  else
    return false
end

end
end


class User
  include Validation
  
  attr_accessor :name
  validate :name, presence:true
  def initialize(name)
    @name = name
  end

end
c = User.new 
c.name = ""
puts c.valid?