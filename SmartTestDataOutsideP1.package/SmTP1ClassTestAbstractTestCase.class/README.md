Data for SmartTest tests on the testForClass:.

Methods of this class have long name in order to be unique and explicit.
Being unique, the senders of each method are mastered and consequently the tests are independent the one from the others.

We will use this that to assert that SmartTest behaves correctly when dealing with inherited methods ans class.

This class is abstract and has one test, the subclasses will herit this test. The first subclass redefines this test ("SmTP1ClassTestSubClassRedefinesMethod") and the other doesn't ("SmTP1ClassTestSubClassDoesntRedefineMethod").