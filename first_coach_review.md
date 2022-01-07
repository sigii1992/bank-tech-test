- Excellent ReadMe, very comprehensive in detailing edge cases, approach, how to run the program, etc. Great work.
- Great consideration of edge cases.
- Withdrawals only being able to be made in multiples of 10 is maybe veering a little outside of the realms of the specification (as it’s something that makes sense according to our real world knowledge of withdrawals, but we don’t have information on how this program will be used and so it might be too much of an assumption).
- Great separation of concerns, I think the three classes you chose to implement complement one another well and have clear responsibilities.
- I would propose that the responsibility of printing the statement would lie more with BankAccount. My reasoning for this is that this class seems to be mostly handling the user interactions - deposit, withdrawal. Maybe Statement could remain responsible for formatting?
- Achieved the specification, well done.
- Good unit testing - I would suggest including a feature_spec.rb, in which you would write tests that carry out the full user journey in order to test that the functionality is running in an integrated way (ie. not isolating your classes in these tests).
- It’s not great practice to expose data outside of a class directly: as you store the amount of each transaction, can you think of a way you might refactor in order to not need the balance variable anymore? This would be a stretch goal.
- Secondly, can you think of a way you could refactor to not need an attribute reader for transaction history? Is there a way you could surface this data more directly / specifically?
- Overall very concisely written classes, each method has a clear responsibility.

I think the main thing to refactor would be that of the transaction history variable in order to change how it's exposed / used, but aside from that it looks great.
