require './lib/bank_account.rb'

describe BankAccount do
  subject(:account) { BankAccount.new }

  it 'has a balance of 0.00 than an account is created' do
    expect(account.balance).to eq(0.00)
  end

  describe '#deposit' do 
    it 'adds deposit to the balance' do 
      account.deposit(1000)
      account.deposit(200)
      expect(account.balance).to eq(1200)
    end
  end

end