class Transfer
  attr_accessor :status 
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @amount = amount
    @status = "pending" 
  end 
  
  def valid? 
    sender.valid? && receiver.valid?
  end 
  
  def reject_transfer
    @status = "rejected" 
    "Transaction rejected. Please check your account balance." 
  end 
  
  def execute_transaction 
    if valid? && sender.balance > amount && @status = "pending"
end