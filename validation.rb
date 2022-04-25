module Validation
  def validate(attrib, options)
    if (options = presence (true))
      if (attrib == nil || attrib == "")
       return "please enter correct imput"
      end
    elsif (options = format (x))
      if attrib !~ x
        return ("please enter correct imput")
      end
    end
  end

  def valid?
    if validate(attrib, options).include? "please"
      return false
    else
      return true
    end
  end
end

class User
  include Validation
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

c = User.new(nil)
c.validate(:name, presence:true)
