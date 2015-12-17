package actors 
{
	import utils.Controller;	
	import flash.events.Event;
	/**
	 * ...
	 * @author Lucas Veerman
	 */
	public class Player extends Paddle 
	{
		private var controller:Controller;
		private var speed:Number = 0;
		private var _maxSpeed:Number = 14;
		
		public function set maxSpeed(l:Number):void {
		_maxSpeed = l;
		if (_maxSpeed > 30)_maxSpeed = 30;
		}
		public function get maxSpeed():Number{
			return _maxSpeed;
		}
		
		public function Player() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);		
		}		
		private function init(e:Event):void 
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, init);
			controller = new Controller(stage);
			this.addEventListener(Event.ENTER_FRAME, loop);			
		}
		private function loop(e:Event):void 
		{
			if (controller.up)
			{
				speed = -maxSpeed;
			}
			else if(controller.down)
			{
				speed = maxSpeed;
			}else
			{
				if (speed > 0) speed--;
				if (speed < 0) speed++;
				
			}
			if (controller.fire)
			{
				
				
			}
			if (this.y < 0) this.y = 0;
			if (this.y > stage.stageHeight) this.y = stage.stageHeight;
		
			this.y += speed;
			
			
		}
		public function destroy():void
		{
			this.removeEventListener(Event.ENTER_FRAME, loop);	
			
		}
	
		
	}

}