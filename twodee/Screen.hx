package twodee;

import openfl.display.Sprite;

class Screen extends Sprite
{
	public var backgroundCanvas:Sprite;
	public var entityCanvas:Sprite;

	public var entities:Array<Entity>;

	public function new() {
		// Set canvasses
		backgroundCanvas = new Sprite();
		entityCanvas = new Sprite();

		// Set arrays
		entities = new Array<Entity>();
	}
}
