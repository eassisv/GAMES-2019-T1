package;

import flixel.FlxG;
import flixel.FlxSprite;

class Player extends FlxSprite {
	var _moveSpeed:Int;
	var _bullet:Bullet;

	public function new(bullet:Bullet) {
		super(FlxG.width / 2, FlxG.height - 20);
		_bullet = new Bullet();
		_bullet.kill();
		_moveSpeed = 500;
		_bullet = bullet;
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
		_bullet.fire(x, y);
	}
}
