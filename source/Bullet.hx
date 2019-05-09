package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.math.FlxVector;

class Bullet extends FlxSprite {
	var _direction:FlxVector;
	var _bulletSpeed:Int;

	public function new() {
		_direction = new FlxVector();
		_bulletSpeed = 300;
		kill();
		super();
	}

	override public function update(elapsed:Float) {
		if (!isOnScreen()) {
			kill();
		}
		if (alive) {
			velocity.set(_direction.x, _direction.y);
		}
		super.update(elapsed);
	}

	public function fire(x_:Float, y_:Float) {
		_direction.set(FlxG.mouse.screenX - x_, FlxG.mouse.screenY - y_).normalize().scale(_bulletSpeed);
		setPosition(x_, y_);
		revive();
	}
}
