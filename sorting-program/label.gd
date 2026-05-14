extends Label


# array sorting function
func array_sort(numbers) -> Array:
	
	var swapped = true
	
	while swapped == true:
		swapped = false
		for number in range(numbers.size() - 1):
			
			var number1position = number
			var number2position = number + 1
		
		
			var number1 = numbers[number1position]
			var number2 = numbers[number2position]
		
			if number1 > number2:
				swapped = true
				numbers.remove_at(number1position)
				numbers.insert(number2position, number1)
				
		
				print(numbers)
				
	return numbers

var time_passed = 0.0

func _process(delta: float) -> void:
	
# time control
	time_passed += delta
	
	if time_passed >= 6.0:
		time_passed = 0.0
		
		# random list generator
		var numbers = []
		for i in range(20):
			numbers.append(randi() % 100)
			
		var result = array_sort(numbers.duplicate())
		print("The sorted list is ", result)
		
		# sorted and random list to lable
		text = "Random: " + str(numbers) + "\nSorted: " + str(result)
