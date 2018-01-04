# Bank tech test

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 ||  || 500.00 || 2500.00
13/01/2012 || 2000.00 ||  || 3000.00
10/01/2012 || 1000.00 ||  || 1000.00
```
---------
## My Comments

When writing this tech test I have focused on quality and paying close attention to principles like the single responsibility principle. In doing so I have not had enough time to implement the withdraw method, as paying close attention to the edge cases this would take a long time to craft with best practices. However I hope the detail and principles included in the deposit method would go some way to show my ability as the withdraw method is along the same vein as the deposit method.

## Using the project

### Install
1. Fork this repo, and clone to your local machine
2. Run the command `gem install bundle` (if you don't have bundle already)
3. When the installation completes, run `bundle`
4. Run `irb`
5. Run `require './lib/bank.rb'`
6. Run `bank = Bank.new`   
The bank application is now ready to use and you have two commands: deposit & print_statement
7. Deposit: You have to pass two parameters into deposit, the amount to be deposited and the date as a string in the following format MM/DD/YYYY. e.g. `bank.deposit(1000, '10/10/2012')`
8. Print: to print the statement run `bank.print_statement`

### Testing
1. Fork this repo, and clone to your local machine
2. Run the command `gem install bundle` (if you don't have bundle already)
3. When the installation completes, run `bundle`
4. Run `bundle exec rspec`    
 additionally if you wish to check to formatting please run `rubocop`

### Map of project

These tables are formatted as follows:

| class   |                  |
|---------|------------------|
| methods | required classes |

**Map:**

| Bank            |             |
|-----------------|-------------|
| deposit         | balance     |
| withdraw        | transaction |
| print_statement | statement   |

| Transaction |                    |
|-------------|--------------------|
| deposit     | transaction_amount |
|             | transaction_date   |

| TransactionDate |      |
|-----------------|------|
| new_date        | date |

| TransactionAmount |  |
|-------------------|--|
| new_amount        |  |

| Balance        |  |
|----------------|--|
| update_balance |  |
| return_balance |  |

| Statement       |                   |
|-----------------|-------------------|
| new             | statement_history |
| print_statement |                   |

| Statement_History |  |
|-------------------|--|
| new               |  |
| print_statement   |  |
