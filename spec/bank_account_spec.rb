require './lib/bank_account.rb'

describe BankAccount do
  subject(:account) { BankAccount.new }
  let(:transaction_deposit) { double :transaction_deposit, :date => "04/01/2022", :credit => 100, :debit => '', :acc_balance => account.balance + 100 }
  let(:transaction_withdraw) { double :transaction_withdraw, :date => "05/01/2022", :credit => '', :debit => 10, :acc_balance => account.balance - 10 }

  it 'has a balance of 0.00 than an account is created' do
    expect(account.balance).to eq(0.00)
  end

  it 'has an empty transactions history log when account is created' do
    expect(account.transactions_history).to eq([])
  end

  it 'adds transaction to the transactions history log when deposit or withdrawal is made' do
    account.deposit(transaction_deposit.credit)
    account.deposit(transaction_deposit.credit)
    account.withdraw(transaction_withdraw.debit)
    expect(account.transactions_history.length).to eq 3
  end

  describe '#deposit' do 
    it 'adds deposit to the balance' do 
      account.deposit(1000)
      account.deposit(200)
      expect(account.balance).to eq(1200)
    end

    it 'raises an error if trying to deposit £0 to the balance' do
      expect { account.deposit(0) }.to raise_error('You have added 0 money to your account, please enter another amount if needed.')
    end

    it 'raises an error if trying to deposit not a number' do
      expect { account.deposit('abc') }.to raise_error('Please enter a valid positive number!')
    end
  end

  describe '#withdraw' do
    it 'withdraws money from the balance' do
      account.deposit(1000)
      account.withdraw(200)
      expect(account.balance).to eq(800)
    end

    it 'raises an error if there is not enough money in the account' do
      expect { account.withdraw(10) }.to raise_error('Oops! Can not withdraw! There is not enough money in your account..')
    end

    it 'raises an error if trying to withdraw £0 from the balance' do
      expect { account.withdraw(0) }.to raise_error('Can not withdraw 0 money, please enter another amount.')
    end

    it 'raises an error if trying to withdraw any other number than multiples by 10' do
      account.deposit(1000)
      expect { account.withdraw(99.99) }.to raise_error('You can only withdraw an amount which is multiple by 10.')
    end

    it 'raises an error if trying to withdraw not a number' do
      account.deposit(1000)
      expect { account.withdraw('abc') }.to raise_error('Please enter a valid positive number!')
    end
  end
end