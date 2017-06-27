package scenes;

import scenes.gameObjects.Player;
import milkshake.Milkshake;
import milkshake.math.Vector2;
import scenes.gameObjects.WorldMap;
import milkshake.game.scene.camera.CameraPresets;
import milkshake.game.scene.Scene;
import milkshake.utils.TweenUtils;

using milkshake.utils.TweenUtils;

class FarmScene extends Scene
{
	private static inline var MAX_ZOOM:Float = 5;
	private static inline var MIN_ZOOM:Float = 0.5;

	private var world:WorldMap;
	private var player:Player;

	public function new()
	{
		super("FarmScene", [ 'assets/maps/island/island.tmx' ], CameraPresets.DEFAULT);
	}

	override public function create():Void
	{
		addNode(world = new WorldMap(),
		{
			scale: new Vector2(1.5, 1.5)
		});

		addNode(player = new Player(),
		{
			position: new Vector2(600, 300)
		});

		super.create();
	}

	private function followPlayer():Void
	{
		cameras.currentCamera.targetPosition.x = player.position.x;
		cameras.currentCamera.targetPosition.y = player.position.y;
	}

	override public function update(deltaTime:Float):Void
	{
		if(Milkshake.getInstance().input.isDownOnce(221) && cameras.currentCamera.targetZoom < MAX_ZOOM)
		{
			cameras.currentCamera.targetZoom += 0.5;
		}

		if(Milkshake.getInstance().input.isDownOnce(219) && cameras.currentCamera.targetZoom > MIN_ZOOM)
		{
			trace('[ down');
			cameras.currentCamera.targetZoom -= 0.5;

			trace(cameras.currentCamera.targetZoom);
		}

		followPlayer();

		super.update(deltaTime);
	}
}
