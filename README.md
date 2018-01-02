# Bank tech test

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification

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
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Notes

* Statement appears in reverse order
* American formatted date
* Numbers as floats with 2 decimal points
* Run through IRB

### Map of project

These tables are formatted as follows:

| class   |                  |
|---------|------------------|
| methods | required classes |

**Map:**

| Transaction    |           |
|----------------|-----------|
| amount         | date      |
| date           | balance   |
| update_balance | statement |
| new_statement  |           |

| Date |  |
|------|--|
| date |  |

| Balance |  |
|---------|--|
| balance |  |

| Statement       |                   |
|-----------------|-------------------|
| new_transaction | date              |
| print           | balance           |
|                 | statement_history |

| Statement_History  |  |
|--------------------|--|
| new_transaction    |  |
| list_of_statements |  |

### Edge cases

* Cannot deposit a negative amount
* Cannot withdraw a negative amount
* Cannot withdraw more than the balance
* Cannot input more than 2 decimal points
* Cannot use an invalid Date
* Cannot use a Date in the future
* When making a new transaction, date & amount must be entered in the correct order
