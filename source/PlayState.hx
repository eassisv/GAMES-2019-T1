package;

import flixel.FlxState;
import flixel.group.FlxGroup;

class PlayState extends FlxState {
	var _player:Player;
	var _bullets:FlxTypedGroup<Bullet>;
	var _numBullets:Int;

	override public function create():Void {
		_bullets = new FlxTypedGroup<Bullet>();
		_player = new Player(_bullets);
		_numBullets = 30;
		createBullets();
		add(_bullets);
		add(_player);
		super.create();
	}

	override public function update(elapsed:Float):Void {
		super.update(elapsed);
	}

	public function createBullets() {
		while (_numBullets > 0) {
			_numBullets--;
			_bullets.add(new Bullet());
		}
	}
}
