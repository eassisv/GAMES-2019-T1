package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxCamera;
import flixel.group.FlxGroup;
import flixel.util.FlxCollision;

class PlayState extends FlxState {
	var _player:Player;
	var _bullets:FlxTypedGroup<Bullet>;
	var _cameraWall:FlxGroup;
	var _enemies:FlxTypedGroup<Enemy>;
	var _spawners:FlxTypedGroup<Spawner>;
	var _numSpawners:Int;

	override public function create():Void {
		_bullets = new FlxTypedGroup<Bullet>(30);
		_player = new Player(_bullets);
		_enemies = new FlxTypedGroup<Enemy>(60);
		_spawners = new FlxTypedGroup<Spawner>(4);
		_cameraWall = FlxCollision.createCameraWall(new FlxCamera(0, 0, FlxG.width, FlxG.height), true, 1, false);
		createBullets();
		createEnemies();
		_spawners.add(new Spawner(-50, -50, _enemies));
		_spawners.add(new Spawner(FlxG.width + 50, -50, _enemies));
		_spawners.add(new Spawner(-50, FlxG.height + 50, _enemies));
		_spawners.add(new Spawner(FlxG.width + 50, FlxG.height + 50, _enemies));
		add(_bullets);
		add(_player);
		add(_cameraWall);
		super.create();
	}

	override public function update(elapsed:Float):Void {
		FlxG.collide(_player, _cameraWall);
		super.update(elapsed);
	}

	private inline function createBullets() {
		for (i in 0..._bullets.maxSize) {
			_bullets.add(new Bullet());
		}
	}

	private inline function createEnemies() {
		for (i in 0..._enemies.maxSize) {
			_enemies.add(new Enemy());
		}
	}
}
