# Bank Account

This is a simple program which allows a user to create a new bank account, deposit and withdraw money. Also, a user can print transactions history statement which is printed with the newest transaction first. The user's balance is stored and can be viewed within the application.

The application works via IRB and the data is kept in memory(no database).

### Edge cases:

- User can only enter positive number.
- User can not deposit or withdraw 0 amount of money.
- User can not withdraw if there is not enough money in their account.
- User can only withdraw an amount which is multiple by 10.

## Code structure:

I tried to keep my code as small as possible and tried to follow the Single Responsibility Principle for readability.

I used 3 classes:

- `BankAccount` which handling `deposit, withdraw and print_statement` methods and stores `balance and transactions history`.
- `Transaction` which stores data of a single transaction, such as `date, credit, debit and account balance`.
- `Statement` which formats(`format_statement`) bank account statement with the newest transaction being printed at the top.

Also, I used TDD to reduce the number of bugs and improve my code quality.

## Technologies used:

- Ruby 3.0.2
- RSpec
- SimpleCov

### You can run the test using:

```
bundle install
rspec
```

## How to run this app:

1. Clone this repo `git clone https://github.com/sigii1992/bank-tech-test.git`
2. `cd bank-tech-test`
3. Run `bundle install`
4. Run `irb` in your terminal
5. Run `require './lib/bank_account.rb`
6. See example bellow of how you can use the program:

<img width="852" alt="Screenshot 2022-01-07 at 15 44 19" src="https://user-images.githubusercontent.com/81166702/148568679-b4692486-0f5f-46e4-975d-55ab5eceaa95.png">

## Test coverage:

<img width="1440" alt="Screenshot 2022-01-07 at 15 41 48" src="https://user-images.githubusercontent.com/81166702/148568759-4864cffd-b43a-40e5-8f7e-25826d8ed6b0.png">

## Acceptance criteria

- Given a client makes a deposit of 1000 on 10-01-2023
- And a deposit of 2000 on 13-01-2023
- And a withdrawal of 500 on 14-01-2023
- When she prints her bank statement
- Then she would se

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
