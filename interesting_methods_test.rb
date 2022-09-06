class Account
  attr_accessor :balance
  def initialize(amount=0)
    self.balance = amount
  end
  def +(x)
    self.balance += x
  end
  def -(x)
    puts 'mius'
    self.balance -= x
  end

  def <<(aa)
    puts aa
  end
  def to_s
    balance.to_s
  end
end

acc = Account.new(20)
acc -= 5
acc = 'aboba' << acc
puts acc


class Banner
  def initialize(text)
    @text = text
  end
  def to_s
    @text
  end
  def +@
    @text.upcase
  end
  def -@
    @text.downcase
  end
end

x = Banner.new('text')
puts +x




