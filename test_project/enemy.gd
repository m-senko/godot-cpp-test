extends RigidBody2D

# Получаем ссылку на наш C++ узел
@onready var health_component = $HealthComponent

func _ready():
	# 1. Вызываем геттер C++
	var current_hp = health_component.get_health()
	print("Начальное здоровье из C++: ", current_hp) # Выведет 100
	
	# 2. Вызываем сеттер C++ напрямую как функцию
	health_component.set_health(50.0)
	print("Здоровье после изменения функцией: ", health_component.get_health()) # Выведет 50
	
	# 3. Работаем через свойство (благодаря ClassDB::add_property)
	# Вы можете обращаться к нему как к обычной переменной!
	health_component.current_health = 75.5 
	print("Здоровье через свойство: ", health_component.current_health) # Выведет 75.5
