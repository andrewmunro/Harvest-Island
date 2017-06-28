package scenes.gameObjects;

import milkshake.components.input.Key;
import milkshake.utils.Color;
import milkshake.core.Graphics;
import milkshake.Milkshake;
import milkshake.core.DisplayObject;
import milkshake.components.input.Input;

class Player extends DisplayObject
{
    var graphics:Graphics;
    var input:Input;

    var speed:Int = 1;

    public function new()
    {
        super('player');

        graphics = new Graphics();
        addNode(graphics);

        graphics.graphics.beginFill(Color.Tomato);
        graphics.graphics.drawRect(-20, -20, 40, 40);

        input = Milkshake.getInstance().input;
    }

    override public function update(deltaTime:Float):Void
    {
        if(input.isDown(Key.UP))
        {
            position.y -= speed;
        }

        if(input.isDown(Key.DOWN))
        {
            position.y += speed;
        }

        if(input.isDown(Key.RIGHT))
        {
            position.x += speed;
        }

        if(input.isDown(Key.LEFT))
        {
            position.x -= speed;
        }

        super.update(deltaTime);
    }
}
