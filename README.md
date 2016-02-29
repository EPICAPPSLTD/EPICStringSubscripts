# EPICStringSubscripts

EPICStringSubscripts is a category extension on String objects written in swift that adds the following functionality to the base framework:

subscript accessors for indexes
------
You can now access characters withing a string by using subscript indexes of Int values, allowing for quick access in code. Both setters and getters for the accessors have been implemented. Note that indexes consider composed character sequences and emoticons as a single position.

#### Usage:
```swift
var string : String = "Hello🌍!"

string[4] //returns 'o'
string[5] //returns '🌍'
string[5] = "World" // string is now "HelloWorld!"
```

subscript accessors for ranges
------
Ranges of strings are now also accessible using default range notation. Both setters and getters for the accessors have been implemented. Note that indexes consider composed character sequences and emoticons as a single position.


#### Usage:
```swift
var string : String = "Hello🌍!"

string[4...6] //returns 'o🌍!'
string[4..<6] //returns 'o🌍'
string[5...6] = "?" // string is now 'Hello?'
string[0..<5] = "Goodbye" // string is now 'Goodbye?'
```

This class serves as an extension to the tutorial of the blog article: ["Subscripting Shortcuts"](TODO).
Usage is free for all based on the attached license details, if you find this code useful, please consider [letting me know](helloworld@epic-apps.uk)! :)

Copyright (c) EPIC 
[www.epic-apps.uk](www.epic-apps.uk)