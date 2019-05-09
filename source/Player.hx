package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup;

class Player extends FlxSprite {
	var _moveSpeed:Int;
	var _bullets:FlxTypedGroup<Bullet>;

	public function new(bullets:FlxTypedGroup<Bullet>) {
		super(FlxG.width / 2, FlxG.height - 20);
		_bullets = bullets;
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
		var bullet:Bullet;
		bullet = _bullets.getFirstDead();
		if (bullet != null) {
			bullet.fire(x, y);
		}
	}
}
