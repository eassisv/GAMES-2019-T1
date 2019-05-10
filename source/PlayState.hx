package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxCamera;
import flixel.group.FlxGroup;
import flixel.util.FlxCollision;

class PlayState extends FlxState {
	var _player:Player;
	var _bullets:FlxTypedGroup<Bullet>;
	var _numBullets:Int = 30;
	var _cameraWall:FlxGroup;

	override public function create():Void {
		_bullets = new FlxTypedGroup<Bullet>(_numBullets);
		_player = new Player(_bullets);
		_cameraWall = FlxCollision.createCameraWall(new FlxCamera(0, 0, FlxG.width, FlxG.height), true, 30, false);
		createBullets();
		add(_bullets);
		add(_player);
		super.create();
	}

	override public function update(elapsed:Float):Void {
		FlxG.collide(_player, _cameraWall);

		super.update(elapsed);
	}

	private function createBullets() {
		for (i in 0..._bullets.maxSize) {
			_bullets.add(new Bullet());
		}
	}
}
