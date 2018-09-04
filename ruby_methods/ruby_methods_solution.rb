# Write the solutions to each problem here!

# 1
p [1, 2, 4, 2].map { |n| n * 2 }


# 2
items = [
{id: 1, body: 'foo'},
{id: 2, body: 'bar'},
{id: 3, body: 'foobar'}
]

p ids = items.map { |x| x[:id] }



# 3
fruits = [
{"name" => "apple", "color" => "red"},
{"name" => "banana", "color" => "yellow"},
{"name" => "grape", "color" => "purple"}
]


#4
#reverse_a_string("abcde")  #=> "edcba"
class String
  def reverse_string
    reversed_string = ""
    string_length = self.length -1

    string_length.downto(0)each.do |l|
      reversed_string << self|l|
    end

    reversed_string
  end  
end
string = "test string"
string << "abcde"


# 5
