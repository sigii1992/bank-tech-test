class Statement
  def print_statement(bank_account)
    puts 'date || credit || debit || balance'
    bank_account.reverse_each { |transaction| 
    puts "#{transaction.date} || #{formatted_number(transaction.credit)} || #{formatted_number(transaction.debit)}|| #{formatted_number(transaction.acc_balance)}"
  }
  end

  private

    def formatted_number(number)
      '%.2f' % number if number.is_a?(Numeric)
    end
end