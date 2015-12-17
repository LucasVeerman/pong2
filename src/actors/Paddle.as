package actors 
{
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author Lucas Veerman
	 */
	public class Paddle extends MovieClip 
	{
		
		public function Paddle() 
		{
			addChild(new PaddleArt());
		}
		
	}

}