package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.input.actions.FlxAction;
import flixel.input.FlxInput;
import flixel.input.keyboard.FlxKey;

class Player extends FlxSprite {
	var _moveSpeed:Int;

	public function new(x:Int, y:Int) {
		super(x, y);
	}

	override public function update(elapsed:Float):Void {
		updateInput();
		super.update(elapsed);
	}

	public function updateInput() {
		if (FlxG.keys.anyPressed([UP, W])) {
			acceleration.y = -_moveSpeed;
		}
		if (FlxG.keys.anyPressed([DOWN, S])) {
			acceleration.y = _moveSpeed;
		}
		if (FlxG.keys.anyPressed([LEFT, A])) {
			acceleration.x = -_moveSpeed;
		}
		if (FlxG.keys.anyPressed([RIGHT, D])) {
			acceleration.x = _moveSpeed;
		}
	}
}
