package;

import flixel.FlxG;
import flixel.FlxSprite;

class Player extends FlxSprite {
	var _moveSpeed:Int;

	public function new() {
		super(FlxG.width / 2, FlxG.height - 20);
		_moveSpeed = 500;
	}

	override public function update(elapsed:Float) {
		updateInput();
		super.update(elapsed);
	}

	public function updateInput() {
		velocity.set(0, 0);
		if (FlxG.keys.anyPressed([UP, W])) {
			velocity.y = -_moveSpeed;
		}
		if (FlxG.keys.anyPressed([DOWN, S])) {
			velocity.y = _moveSpeed;
		}
		if (FlxG.keys.anyPressed([LEFT, A])) {
			velocity.x = -_moveSpeed;
		}
		if (FlxG.keys.anyPressed([RIGHT, D])) {
			velocity.x = _moveSpeed;
		}
		if (FlxG.mouse.justPressed) {
			fire();
		}
	}

	public function fire() {
		FlxG.log.add("fire");
	}
}
