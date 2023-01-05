using Godot;
using System;

public class world : Node2D
{
	// Declare member variables here. Examples:
	// private int a = 2;
	// private string b = "text";

	PackedScene lTroop = GD.Load<PackedScene>("res://objects/troop.tscn");

	// Called when the node enters the scene tree for the first time.
	public override void _Ready() {
		
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(float delta) {
		if (Input.IsActionJustPressed("act")) {
			Node t = lTroop.Instance();
			AddChild(t);
		}
	}
}
