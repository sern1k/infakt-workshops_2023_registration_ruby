class ValidatePassword
  attr_accessor :password
  def initialize(password)
    @password = password
  end

  def perform()
    return false unless @password.length >= 6 and @password.length <= 24
    return false unless @password =~ /[A-Z]/
    return false unless @password =~ /[a-z]/
    return false unless @password =~ /[0-9]/
    return false unless @password =~ /[!@#$%&*+=:;?<>]/
    return false if @password =~ /(.)\1{2,}/ # wyrażenie regularne do znajdowania 3 lub więcej identycznych znaków pod rząd
    true
  end
end
