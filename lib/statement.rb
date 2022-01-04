class Statement
  def print_statement(bank_account)
    puts 'date || credit || debit || balance'
    bank_account.reverse_each { |transaction| 
    puts "#{transaction.date} || #{'%.2f' % transaction.credit} || #{'%.2f' % transaction.debit}|| #{'%.2f' % transaction.acc_balance}"
  }
  end
end