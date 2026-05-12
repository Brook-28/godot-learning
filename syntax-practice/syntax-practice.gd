extends Node

var cost = 0
func total_cost(cart, dict):
		for item in cart:
			cost += dict[item]
		print(cost)
		
func _ready() -> void:
	
	# 1.1 Variables and types
	var User_name = "Ryan"
	var Favourite_number = "28"
	print(User_name, Favourite_number)
	
	# 1.2
	var First_integer: int = 20
	var Second_integer: int = 3
	var First_float: float = 4.5
	
	@warning_ignore("integer_division")
	print(First_integer / Second_integer)
	print(First_integer / First_float)
	
	# 2.1 Conditionals
	var score = 73
	if score > 50:
		print('Pass')
	else:
		print("Fail")
	
	# 2.2
	var hour = 14
	if hour > 18:
		print("Good evening")
	elif hour < 18 and hour > 12:
		print("Good afternoon")
	else:
		print("Good morning")
	
	# 3.1  Loops
	for number in range(2, 21, 2):
		print(number)
	
	# 3.2 Loops
	var Number_while = 256
	while Number_while > 5:
		print(Number_while)
		Number_while /= 2
		
	# 3.3
	for number in range(1, 16):
		if number % 3 == 0 and number % 5 == 0:
			print("FizzBuzz")
		elif number % 3 == 0:
			print("Fizz")
		elif number % 5 == 0:
			print("Buzz")
		else:
			print(number)
		
	# 4.1 Arrays
	var fruits = ["banana", "orange", "apple", "mango", "lemon"]
	print(fruits[0])
	print(fruits[-1])
	print(fruits.size())

	# 4.2
	var numbers = [4, 7, 2, 9, 1]
	var biggest_number = 0
	for biggest in numbers:
		if biggest > biggest_number:
			biggest_number = biggest
	print(biggest_number)
	
	# 4.3
	var squared_numbers = []
	for number in range(1, 9):
		squared_numbers.append(number ** 2)
	print(squared_numbers)
	
	# 5.1 Dictionaries
	var person = {"name": "Walter", "age": "50", "city": "Albuquerque"}
	for pair in person:
		print(pair, " ", person[pair])

	# 5.2 
	var product = {"Chips": 2.54, "Cola": 2.09, "Burger": 4.23}
	
	total_cost(["Chips", "Cola", "Burger"], product)
