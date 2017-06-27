package scenes;

import externs.PixiTiledMap;
import milkshake.game.scene.camera.CameraPresets;
import milkshake.game.scene.Scene;
import milkshake.utils.TweenUtils;

using milkshake.utils.TweenUtils;

class FarmScene extends Scene
{
	var tiledMap:PixiTiledMap;

	public function new()
	{
		super("FarmScene", [ 'assets/maps/island/island.tmx' ], CameraPresets.DEFAULT);
	}

	override public function create():Void
	{
		var tiledMap = new PixiTiledMap('assets/maps/island/island.tmx');
		displayObject.addChild(tiledMap);

		tiledMap.scale = new pixi.core.math.Point(1.5, 1.5);
		tiledMap.layers['Ground'].alpha = 0.5;


		super.create();
	}

	override public function update(deltaTime:Float):Void
	{
		super.update(deltaTime);
	}
}
