# Strategy Pattern

The key idea underlying the Strategy pattern is to define a family of objects, the strategies, which all do the same thing. Not only does each strategy object perform the same job, but all of the objects support exactly the same interface.

> Because the Strategy pattern is based on composition and delegation, rather than on inheritance, it is easy to switch strategies at runtime. We simply swap out the strategy object

## Sharing Data between the Context and the Strategy
- Pass in everything that the strategy needs as arguments when the context calls the methods on the strategy object
- Get the data from the context to the strategy by having the context object pass a reference to itself to the strategy object (increases the coupling between the context and the strategy)

## Procs and Blocks
Strategy is a lump of executable code that knows how to do something and is wrapped up in an object.

Proc is a chunk of code wrapped in an object.

Procs and Blocks can be use to implement the Strategy Pattern without the need to define special classes, create a strategy out of thin air by passing a code block right into the method but it only works when the strategy interface is a simple, one-method affair.
