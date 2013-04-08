require 'set'

# this is how we make a hash with nothing in it
not_very_useful = {} # only not useful since we won't be using it again!

# this is how we make a new hash with a thing in it
dictionary = {chork: "like stuff but less pleasant."} # you can have more than one thing in a new hash if you separate the entries with commas

# you can add a new thing to a hash if you want, like this.
dictionary[:literally] = Set.new([
  "the actual thing you are saying.",
  "an emphasizer that means not actually the thing you're saying."
])

# then you can look up the definition of a word like this
dictionary[:chork]

# this shows how you can use a hash to associate more than one thing on the right (values) to one thing on the left (keys).
dictionary.each do |word, definition|
  case definition
  when String then puts "the word #{word} means #{definition}"
  when Set
    then definition.each do |an_specific_definition|
      puts "there are many definitions for #{word} but one of them is #{an_specific_definition}"
    end
  end
end