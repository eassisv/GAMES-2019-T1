package;

import flixel.FlxSprite;
import flixel.util.FlxPath;
import flixel.math.FlxPoint;

class Enemy extends FlxSprite {
	var _shootInterval:Int;
	var _path:FlxPath;
	var _points:Array<FlxPoint>;

	public function new() {
		_path = new FlxPath();
		super();
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);
	}

	public function spawn(x_:Float, y_:Float) {
		reset(x_, y_);
		_points = [new FlxPoint(200, 200), new FlxPoint(100, 100)];
		path = _path;
		path.start(_points, 10, FlxPath.FORWARD);
	}
}
