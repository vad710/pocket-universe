package
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		
		private var planets:FlxGroup;
		private var player:Player;
		private var obstacles:FlxGroup;
		
		public function PlayState()
		{
		}

		override public function create():void
		{
			// create all the planets for the level
			planets = new FlxGroup();
			planets.add(new GrapePlanet(100, 70, 1));
			planets.add(new GrapePlanet(800, 240, 0));
			planets.add(new GrapePlanet(400, 490, 0));

			// create all the obstacles for the level
			obstacles = new FlxGroup();
			
			// create the player
			player = new Player(planets.members[0].getPointAt(planets.members[0].getCheckpoint()), planets);
			
			// add all to the world
			add(planets);
			add(obstacles);
			add(player);
		}
	}
}