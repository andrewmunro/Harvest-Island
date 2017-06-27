package scenes;

import milkshake.utils.Color;
import milkshake.core.Text;
import milkshake.components.input.Key;
import milkshake.Milkshake;
import milkshake.game.scene.camera.CameraPresets;
import milkshake.game.scene.Scene;
import milkshake.math.Vector2;
import milkshake.utils.TweenUtils;

using milkshake.utils.TweenUtils;

class TitleScene extends Scene
{
	var text:Text;

	public function new()
	{
		super("TitleScene", [  ], CameraPresets.DEFAULT);
	}

	override public function create():Void
	{
		super.create();

		addNode(text = new Text("Press Enter to continue", "white"),
		{
			scale: new Vector2(2, 2)
		});

		text.position.x = 450;
		text.position.y = 275;
	}

	override public function update(deltaTime:Float):Void
	{
		if(Milkshake.getInstance().input.isEitherDown([Key.SPACE, Key.ENTER]))
		{
			Milkshake.getInstance().scenes.changeScene('FarmScene');
		}

		super.update(deltaTime);
	}
}
