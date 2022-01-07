require 'timecop'

describe 'feature test' do
  time = Time.local(2022, 1, 1)
  Timecop.freeze(time)
  it 'makes several transactions' do
    account = BankAccount.new
    account.deposit(100)
    account.withdraw(20)
    account.deposit(50)
    expect(account.balance).to eq(130)
  end

  it 'makes several transactions and prints a statement' do
    expected_output =
    "date || credit || debit || balance\n"\
    "14/02/2022 || 200.00 || || 330.00\n"\
    "01/02/2022 ||  ||30.00 || 130.00\n"\
    "01/02/2022 || 20.00 || || 160.00\n"\
    "01/01/2022 || 50.00 || || 140.00\n"\
    "01/01/2022 ||  ||10.00 || 90.00\n"\
    "01/01/2022 || 100.00 || || 100.00\n"
    account = BankAccount.new
    account.deposit(100.00)
    account.withdraw(10.00)
    account.deposit(50.00)
    time = Time.local(2022, 2, 1)
    Timecop.freeze(time)
    account.deposit(20.00)
    account.withdraw(30.00)
    time = Time.local(2022, 2, 14)
    Timecop.freeze(time)
    account.deposit(200.00)
    expect { account.print_statement }.to output(expected_output).to_stdout
    Timecop.return
  end
end