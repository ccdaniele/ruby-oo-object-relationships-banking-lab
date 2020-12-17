require "pry"
class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status, :valid_transfer
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount 
  end

  def valid?
    sender.valid? && receiver.valid?
  end





  def execute_transaction
    if sender.valid? && sender.balance > amount && receiver.valid?
       sender.balance = sender.balance - amount
       receiver.balance += amount
       @status = "complete"
    else "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
    
  end

  







end

Transfer.new("maria", "martha",1000)



#binding.pry
"hello"