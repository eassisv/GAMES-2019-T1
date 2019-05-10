package;

import flixel.FlxSprite;
import flixel.group.FlxGroup;

class Spawner extends FlxSprite {
	var _enemies:FlxTypedGroup<Enemy>;

	public function new(x_:Float, y_:Float, enemies:FlxTypedGroup<Enemy>) {
		super(x_, y_);
		_enemies = enemies;
	}

	override public function update(elapsed:Float) {
		if (!alive) {}
	}
}
