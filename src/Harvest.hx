package ;

import scenes.FarmScene;
import scenes.TitleScene;
import milkshake.Milkshake;

class Harvest
{
	public static function main()
	{
		var milkshake = Milkshake.boot(new Settings(1280, 720));

		Milkshake.getInstance().scenes.addScene(new TitleScene());
		Milkshake.getInstance().scenes.addScene(new FarmScene());
	}
}
