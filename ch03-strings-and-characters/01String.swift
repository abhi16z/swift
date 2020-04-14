// strings are fast

// simple string "strrrriiinnngggggg"

// multipline

let multiline = """
multiline
string
is 
thsi
"""

// multipline strings should be on different line from quotes.

print(multiline);

let lineBreakString = """
hello \
world
""";

print(lineBreakString)
//=> hello world

// despite being multiline, \ escape character stuffs them into the same line

let lineBreakString2 = """
hello \
world
tyhere
""";

print(lineBreakString2)

//=> hello world
// tyhere

//. since there is no escape character, there comes in the same line


let whiteSpaceString = """


            hello
              tjere
            here
                      wlalalala
"""

print (whiteSpaceString)

// the 3 quotes in the emd should not be intended


print("//////////////////////////////////")

print("abc \n hi")

print(#"abc \n hi"#)
