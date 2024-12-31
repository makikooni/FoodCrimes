extends Node
@onready var music_player: TextureRect = %music_player
@onready var stop_audio: Button = %stop_audio
@onready var pause_audio: Button = %pause_audio
@onready var play_audio: Button = %play_audio
@onready var exit_music_player: Button = %exit_music_player
@onready var audio_name: Label = %audio_name
@onready var minutes: Label = %minutes
@onready var nurse_audio: AudioStreamPlayer2D = %nurse_audio
@onready var daughter_audio: AudioStreamPlayer2D = %daughter_audio

var current_track =""
func play_audios(track):
	if track == "nurse":
		current_track = "n"
		nurse_audio.play()
	if track == "daughter":
		current_track = "d"
		daughter_audio.play()

func _on_play_audio_pressed() -> void:
	if current_track == "n":
		if nurse_audio.stream_paused == true:
			nurse_audio.stream_paused = false
		else: 
			play_audios("nurse")
	if current_track == "d":
		if daughter_audio.stream_paused == true:
			daughter_audio.stream_paused = false
		else: 
			play_audios("daughter")

func _on_pause_audio_pressed() -> void:
	if daughter_audio.playing == true:
		daughter_audio.stream_paused = true
	if nurse_audio.playing == true:
		nurse_audio.stream_paused = true


func _on_stop_audio_pressed() -> void:
	if current_track == "n":
		daughter_audio.stop()
	if current_track == "d":
		daughter_audio.stop()


func _on_exit_music_player_pressed() -> void:
	music_player.visible = false
	_on_stop_audio_pressed()
	
func change_audio_names(tittle,length):
	audio_name.text = tittle
	minutes.text = length
