# Template Method Pattern

The general idea of the Template Method pattern is to build an abstract base class with a skeletal method. This skeletal method (also called a template method) drives the bit of the processing that needs to vary, but it does so by making calls to abstract methods, which are then supplied by the concrete subclasses. We pick the variation that we want by selecting one of those concrete subclasses.

Non-abstract methods that can be overridden in the concrete classes of the Template Method pattern are called hook methods. Hook methods permit the concrete classes to choose (1) to override the base implementation and do something different or (2) to simply accept the default implementation.

**Sometimes, however, the default implementation of a hook method may actually contain some code.**

>The Template Pattern is based on *inheritance*

### Wrapping Up

The Template Method pattern is simply a fancy way of saying that if you want to vary an algorithm, one way to do so is to code the invariant part in a base class and to encapsulate the variable parts in methods that are defined by a number of subclasses. The base class can simply leave the methods completely undefined—in that case, the subclasses must supply the methods. Alternatively, the base class can provide a default implementation for the methods that the subclasses can override if they want.
