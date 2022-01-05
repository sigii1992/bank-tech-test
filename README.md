# Bank Account

This is a simple program which allows a user to create a new bank account, deposit and withdraw money. Also, a user can print transactions history statement which is printed with the newest transaction first. The user's balance and banking transactions are stored and can be viewed within the application.

The application works via IRB and the data is kept in memory(no database).

### Edge cases:

- User can only enter positive number.
- User can not deposit or withdraw O amount of money.
- User can not withdraw if there is not enough money in their account.
- User can only withdraw an amount which is multiple by 10.

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

<img width="717" alt="Screenshot 2022-01-05 at 11 15 11" src="https://user-images.githubusercontent.com/81166702/148213363-109033de-3208-4e77-a934-fee2d3d4af19.png">

## Test coverage:

<img width="1440" alt="Screenshot 2022-01-05 at 11 07 55" src="https://user-images.githubusercontent.com/81166702/148214190-3484fea4-b572-447b-affc-e01aa303e01f.png">

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
