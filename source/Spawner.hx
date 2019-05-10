package;

import flixel.FlxSprite;
import flixel.group.FlxGroup;

class Spawner extends FlxSprite {
	var _enemies:FlxTypedGroup<Enemy>;

	public function new(x_:Float, y_:Float, enemies:FlxTypedGroup<Enemy>) {
		_enemies = enemies;
		createEnemies();
		super(x_, y_);
	}

	override public function update(elapsed:Float) {}

	private function createEnemies() {
		for (e in _enemies) {
			e = new Enemy();
		}
	}
}
