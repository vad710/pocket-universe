package
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		
		private var planets:FlxGroup;
		private var player:Player;
		
		public function PlayState()
		{
		}

		override public function create():void
		{
			FlxG.bgColor = 0x000000;
			planets = new FlxGroup();
			planets.add(new Planet(10, 20));
			player = new Player(planets);
			add(planets);
			add(player);
		}
	}
}