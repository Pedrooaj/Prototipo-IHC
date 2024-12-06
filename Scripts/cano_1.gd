extends Sprite2D  # Usando Sprite2D

var initial_rotation : float  # Para armazenar a rotação inicial aleatória
var rotation_state = 0  # 0 = vertical, 1 = horizontal, 2 = diagonal, etc.
func _ready():
	# Defina uma rotação aleatória para o cano ao iniciar o jogo
	initial_rotation = randf_range(0, 360)  # Gera um valor aleatório entre 0 e 360
	rotation = deg_to_rad(initial_rotation)  # Converte para radianos e aplica ao sprite
	set_process_input(true)  # Habilita o processamento de entrada (cliques)

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if get_rect().has_point(to_local(event.position)):  # Verifica se o clique foi dentro do sprite
			rotate_cano()

func rotate_cano():
	# A rotação do Sprite é modificada diretamente
	rotation_state = (rotation_state + 1) % 4  # Rotaciona 90 graus a cada interação
	match rotation_state:
		0:
			rotation = deg_to_rad(0)   # Vertical
		1:
			rotation = deg_to_rad(90)  # Horizontal
		2:
			rotation = deg_to_rad(180) # Vertical invertido
		3:
			rotation = deg_to_rad(270) # Horizontal invertido
