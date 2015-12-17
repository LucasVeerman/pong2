package actors 
{
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author Lucas Veerman
	 */
	public class PowerUp extends MovieClip 
	{
		
		public function PowerUp() 
		{
			addChild(new PowerUpArt());
		}
		
	}

}