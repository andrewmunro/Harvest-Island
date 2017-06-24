package scenes.gameobjects;

import milkshake.assets.SpriteSheets;
import milkshake.components.input.Input;
import milkshake.components.input.Key;
import milkshake.core.Graphics;
import milkshake.core.Sprite;
import milkshake.game.scene.camera.CameraPresets;
import milkshake.game.scene.Scene;
import milkshake.math.Vector2;
import milkshake.utils.Color;
import milkshake.utils.Globals;
import motion.easing.Elastic;
import motion.easing.Sine;
import pixi.core.textures.Texture;

using milkshake.utils.TweenUtils;

class Player extends milkshake.core.DisplayObject
{
	var input:Input;

	var velocity:Vector2;

	public function new()
	{
		super();
		
		var graphics = new Graphics();

		graphics.graphics.beginFill(0xFF0000);
		graphics.graphics.drawRect(-25, -40, 50, 80);

		addNode(graphics);

		velocity = new Vector2();

		input = new Input();
	}

	override public function update(deltaTime:Float):Void
	{
		velocity.y += 0.8;

		if(position.y > 700)
		{
			velocity.y = 0;
		}

		if(input.isDown(Key.SPACE))
		{
			jump();
		}

		position.add(velocity);

		super.update(deltaTime);
	}

	public function jump()
	{
		velocity.y = -10;
		// this.scale.tween(0.5, { x: 0.7, y: 1.3 }).ease(Sine.easeOut).onComplete(function()
		// {
		// 	this.scale.tween(0.8, { x: 1.3, y: 0.7 }).ease(Elastic.easeIn).delay(0);
		// });
	}
}