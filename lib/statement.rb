class Statement
  def format_statement(statement_history)
    header
    statement_history.reverse_each do |transaction| 
    puts "#{transaction.date} || #{formatted_number(transaction.credit)} || #{formatted_number(transaction.debit)}|| #{formatted_number(transaction.acc_balance)}"
    end
  end
  
  private
    def formatted_number(number)
      '%.2f' % number if number.is_a?(Numeric)
    end

    def header 
      puts 'date || credit || debit || balance'
    end
end