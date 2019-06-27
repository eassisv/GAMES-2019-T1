package;

import flixel.FlxSprite;
import flixel.util.FlxPath;
import flixel.math.FlxPoint;

class Enemy extends FlxSprite {
	var _shootInterval:Int;
	var _path:FlxPath;

	public function new() {
		super();
		_path = new FlxPath();
		makeGraphic(20, 20, 0xffff0000);
		exists = false;
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);
	}

	public function spawn(x_:Float, y_:Float) {
		reset(x_, y_);
		var points:Array<FlxPoint> = [new FlxPoint(100, 100), new FlxPoint(300, 300), new FlxPoint(100, 300)];
		path = new FlxPath().start(points, 500, FlxPath.YOYO);
	}
}
