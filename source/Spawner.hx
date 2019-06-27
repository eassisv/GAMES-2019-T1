package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup;

class Spawner extends FlxSprite {
	var _enemies:FlxTypedGroup<Enemy>;
	var _spawnInterval:Int = 10;

	public function new(x_:Float, y_:Float, enemies:FlxTypedGroup<Enemy>) {
		super(x_, y_);
		_enemies = enemies;
	}

	override public function update(elapsed:Float) {
		if (_spawnInterval == 10) {
			var enemy = _enemies.getFirstAvailable();
			if (enemy != null) {
				FlxG.log.add("puto");
				enemy.spawn(x, y);
			}
			_spawnInterval = 0;
		}
	}
}
