### Variables
one = 1
random_number = 32

cd_price = 1.5

truthy = true
falsy = false

my_name = "yashh"
my_role = "nothing"

a_symbol = :my_symbol


# print one, random_number, truthy, falsy, my_name, my_role, a_symbol


### Conditional statements
if true
    puts "Hello World!"
end

if 2>1
    puts "2 is greater than 1"
end

if 1>2
    puts "1 is greater than 2"
else
    puts "1 is not greater than 2"
end

if 1>2
    puts "1 is greater than 2"
elsif 2>1
    puts "2 is greater than 1"
else
    puts "1 is equal to 2"
end

### Idiomatic Ruby
def green?
    true
end

puts "let's race" if green?

### Looping
# num = 1

# while num <= 10
#     puts num
#     num += 1
# end

### Difference between for and each is local variable privacy; 
### num has a value in for loop even outside it, but it does not have one in array

# for num in 1..5
#     puts num
# end

# puts num

# [1, 2, 3, 4, 5].each do |num|
#     puts num
# end

# puts num

### Array - works similar to normal array

my_nums = [1, 2, 3, 4, 5]


my_nums.push(6)
# print my_nums[-1]

my_nums << 7
print my_nums

### Hash: Key-Value DS
hash_yash = {
    "name" => "Yashwanth",
    "nickname" => "Yash",
    "nationality" => "Indian"
}

# print "My name is #{hash_yash["name"]}"
# print "you can call me #{hash_yash["nickname"]}"
# print "and I'm #{hash_yash["nationality"]}"

hash_yash["age"] = 26

# print "and my age is #{hash_yash["age"]}"

# Looping through DS
sitcom_series = [
    "Friends",
    "Modern Family",
    "The Office",
    "How I met your mother"
]

sitcom_series.each do |series|
    puts series
end

hash_yash.each do |attribute, value|
    puts "#{attribute}: #{value}"
end

# Class
# attr_reader - getter function
# attr_writer - setter function
# attr_accessor - both getter and setter
class Vehicle
    attr_accessor :number_of_wheels #attr_accessor works as both getter and setter function

    def initialize(number_of_wheels, type_of_tank, seating_capacity, maximum_velocity)
        @number_of_wheels = number_of_wheels
        @type_of_tank = type_of_tank
        @seating_capacity = seating_capacity
        @maximum_velocity = maximum_velocity
    end

    def number_of_wheels
        @number_of_wheels
    end

    def set_number_of_wheels=(number)
        @number_of_wheels = number
    end

    def make_noise
        "VROOOM"
    end
end

tesla_model_s = Vehicle.new(4, 'electric', 4, 250)
print(tesla_model_s.number_of_wheels)

tesla_model_s.number_of_wheels = 3
print(tesla_model_s.number_of_wheels)

bmw_x5 = Vehicle.new(4, 'gas', 4, 300)
print(bmw_x5.make_noise)

