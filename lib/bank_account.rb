class BankAccount
  attr_accessor :balance, :status 
  attr_reader :name 
  
  def initialize(name) 
    @name = name 
    @balance = 1000 
    @status = "open" 
  end 
  
  def valid? 
    self.status == "open" && self.balance > 0 
  end 
  
  def deposit(integer) 
    @balance += integer 
  end 
  
  
  

end
