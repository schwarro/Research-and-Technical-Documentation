#length
#returns the number of characters of str
#arguments: none
#return type: integer
"Hey, it's Rob".length #=> 13

#strip
#returns a copy of str with surrounding white space removed
#arguments: none
#return type: string
"      Hey      ".strip #=> "Hey"

#split
#divides str into substrings based on a delimiter, returning an array of substrings
#arguments: none
#return type: array
"hello".split #=> ["h", "e", "l", "l", "o"]

#start_with?
#returns true if str starts with prefix given
#arguments: none
#return type: boolean
"hello".start_with?("hell") #=> true
"bye".start_with?("hell") #=> false

#first
#returns the first element of the array
#arguments: none
#return type: object or 'nil'
a = [ "q", "r", "s", "t" ]
a.first     #=> "q"
a.first(2)  #=> ["q", "r"]

#delete_at
#deletes the element at the specified index, returning that element or nil if the index is out of range
#arguments: none
#returns: object or 'nil'
a = ["ant", "bat", "cat", "dog"]
a.delete_at(2)    #=> "cat"
a                 #=> ["ant", "bat", "dog"]
a.delete_at(99)   #=> nil

#deletes
#deletes all items from self that are equal to object
#arguements: none
#returns: aray or 'nil'
a = [ "a", "b", "b", "b", "c" ]
a.delete("b")                   #=> "b"
a                               #=> ["a", "c"]
a.delete("z")                   #=> nil
a.delete("z") { "not found" }   #=> "not found"

#pop
#Removes the last element from self and returns it or nil
#arguements: none
#returns: array or 'nil'
a = [ "a", "b", "c", "d" ]
a.pop     #=> "d"
a.pop(2)  #=> ["b", "c"]
a         #=> ["a"]

#to_a
#converts hash to a nested array of arrays
#arguments: integer amount
#returns: array or 'nil'
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]

#has_key?
#Returns true if the given key is present in the hash
#arguements: (object key_req)
#returns: boolean
h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false

#has_value?
#Returns true if the given value is present for some key in the hash
#arguements: (object value_req)
#returns: boolean
h = { "a" => 100, "b" => 200 }
h.value?(100)   #=> true
h.value?(999)   #=> false

#now
#creates a new time object for the current time.
#arguements: none
#returns: object time
time.now #=>  2019-07-19 16:13:20

#exist?
#Returns true if the named file exists
#arguments: none
#returns: boolean
file = ".example.rb"
file.exist?(file) => true

#extname
#Returns the extenson of said file
#arguements: string filename
#return: file type
File.extname("test.rb")         #=> ".rb"
File.extname("test")            #=> ""
