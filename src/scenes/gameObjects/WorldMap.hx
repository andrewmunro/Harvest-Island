package scenes.gameObjects;

import externs.PixiTiledMap;
import milkshake.core.DisplayObject;

class WorldMap extends DisplayObject
{
    var map:PixiTiledMap;

    public function new()
    {
        super('worldmap');

        var map = new PixiTiledMap('assets/maps/island/island.tmx');
        displayObject.addChild(map);
    }
}
