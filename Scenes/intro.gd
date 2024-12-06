extends Control

func _ready():
	setup_ui()

func setup_ui():
	# Configurações do Título
	var title_label = Label.new()
	title_label.text = "Bem Vindo ao PIPE GAME"
	title_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	title_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	title_label.autowrap = true
	title_label.anchor_top = 0.1
	title_label.anchor_bottom = 0.2
	title_label.anchor_left = 0.1
	title_label.anchor_right = 0.9
	title_label.add_theme_color_override("font_color", Color(1, 1, 1))  # Branco
	add_child(title_label)
	
	# Criando um VBoxContainer para organizar os botões
	var button_container = VBoxContainer.new()
	button_container.anchor_top = 0.4
	button_container.anchor_bottom = 0.6
	button_container.anchor_left = 0.4
	button_container.anchor_right = 0.6
	button_container.rect_min_size = Vector2(200, 100)
	button_container.spacing = 20
	add_child(button_container)

	# Botão "Info"
	var info_button = Button.new()
	info_button.text = "Info"
	info_button.connect("pressed", Callable(self, "_on_info_button_pressed"))
	button_container.add_child(info_button)

	# Botão "Jogar"
	var play_button = Button.new()
	play_button.text = "Jogar"
	play_button.connect("pressed", Callable(self, "_on_play_button_pressed"))
	button_container.add_child(play_button)

# Funções de callback para os botões
func _on_info_button_pressed():
	print("Botão Info pressionado!")
	# Aqui você pode abrir uma nova tela ou exibir informações

func _on_play_button_pressed():
	print("Botão Jogar pressionado!")
	# Aqui você pode carregar a próxima cena ou iniciar o jogo
