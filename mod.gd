extends Node

const SNAPTIC_BASE_PATH := "res://gdpatch/mods/snapticbase/mod.gd"

func _ready() -> void:
	var snaptic_base: Variant = load(SNAPTIC_BASE_PATH)
	if snaptic_base == null:
		push_error("[rusnaptic] SnapticBase was not found")
		return

	snaptic_base.register(
		"rusnaptic",
		get_script().resource_path.get_base_dir()
	)
