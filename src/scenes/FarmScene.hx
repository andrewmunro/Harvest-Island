package scenes;

import milkshake.game.scene.camera.CameraPresets;
import milkshake.game.scene.Scene;
import milkshake.utils.TweenUtils;

using milkshake.utils.TweenUtils;

class FarmScene extends Scene
{
	public function new()
	{
		super("FarmScene", [  ], CameraPresets.DEFAULT);
	}

	override public function create():Void
	{
		super.create();
	}

	override public function update(deltaTime:Float):Void
	{
		super.update(deltaTime);
	}
}
