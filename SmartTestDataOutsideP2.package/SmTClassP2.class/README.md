Data for SmartTest tests on the filters (default, defaultClass, restricted package).

Methods of this class have long name in order to be unique and explicit.
Being unique, the senders of each method are mastered and consequently the tests are independent the one from the others.

In the tests, it is always the methods whose name contains 'method1' that are modified. If the name contains first level, the methods are directly called by a test. If the name contains SecondLevel, they are called by an another method (whose name contains 'method2').

This class is not referenced anywhere (we used concatenation to be sure).

The methods and tests in this package are not located in the same package as the modified method.