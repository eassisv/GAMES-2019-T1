package;

import flixel.FlxState;

class PlayState extends FlxState {
	var _player:Player;
	var _bullet:Bullet;

	override public function create():Void {
		_bullet = new Bullet();
		_player = new Player(_bullet);
		add(_player);
		add(_bullet);
		super.create();
	}

	override public function update(elapsed:Float):Void {
		super.update(elapsed);
	}
}
