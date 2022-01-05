require './lib/statement.rb'

describe Statement do
  let(:transaction_deposit1) { double :transaction_deposit1, :date => "04/01/2022", :credit => 100.00, :debit => '', :acc_balance => 100.00 }
  let(:transaction_deposit2) { double :transaction_deposit2, :date => "05/01/2022", :credit => 500.00, :debit => '', :acc_balance => 600.00 }

  describe '#print_statement' do
    it 'prints the full bank statement in reverse order' do 
      bank_statement = [transaction_deposit1, transaction_deposit2]
      expect { Statement.print_statement(bank_statement) }.to output("date || credit || debit || balance\n" + "05/01/2022 || 500.00 || || 600.00\n" +
      "04/01/2022 || 100.00 || || 100.00\n").to_stdout
    end
  end
end