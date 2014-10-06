package twodee;

import flash.events.Event;
import openfl.display.Sprite;

class Game extends Sprite
{
	public var gameWidth:Int;
	public var gameHeight:Int;

	public var updateRate:Float;
	public var frameRate:Float;

	public var backgroundColor:UInt;

	public function new(width:Int = 800, height:Int = 600, updateRate:Float = 60.0, frameRate:Float = 60.0, backgroundColor:Uint = 0x333333) {
		// Set window options
		gameWidth = this.width = width;
		gameHeight = this.height = height;

		// Set update and frame rates
		this.updateRate = updateRate;
		this.frameRate = frameRate;

		// Set color
		this.backgroundColor = backgroundColor;

		// Set initializing when added to stage
		addEventListener(Event.ADDED_TO_STAGE, init);
	}

	private function init(_):Void {
		if (stage == null) return;

		removeEventListener(Event.ADDED_TO_STAGE, init);

		// Setup stage dimension and frame rate
		this.stage.stageWidth = this.width;
		this.stage.stageHeight = this.height;
		this.stage.frameRate = this.frameRate;

		// Set color
		this.stage.color = this.backgroundColor;
	}
}
