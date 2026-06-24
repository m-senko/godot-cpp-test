extends Node

var my_calc: StatsCalculator # Объявляем переменную для нашего C++ класса

func _ready():
	# Создаем объект через .new()
	my_calc = StatsCalculator.new() 
	my_calc.init(1.5)
	
	print("--------------Add 1000 xp--------------")
	my_calc.add_xp(1000)
	print("XP from C++: ", my_calc.get_xp())
	print("Level from C++:", my_calc.get_level())
	print("--------------Add 10 level--------------")
	my_calc.add_level(1)
	print("XP from C++: ", my_calc.get_xp())
	print("Level from C++:", my_calc.get_level())
	
	# Как только мы присвоим null (или скрипт уничтожится), 
	# у объекта исчезнет последняя ссылка, и он сам удалится из памяти!
	my_calc = null # В этот же миг сработает деструктор C++
