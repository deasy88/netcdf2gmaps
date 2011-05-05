package com.vizzuality
{
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.utils.Dictionary;
	
	public class DynamicImageOverlay extends Sprite
	{
		
		private var images:Array=[];
		private var imgDict:Dictionary= new Dictionary(true);
		private var canvas:Sprite = new Sprite(); 
		
		
		public function DynamicImageOverlay(_images:Array) {
			images=_images;
			
			
			canvas.graphics.drawRect(0,0,1,1);
			this.addChild(canvas);
			
			
			//cache images
/*			for each( var img_url:String in images) {
				var loader:Loader = new Loader();
				loader.load(new URLRequest(img_url));
				imgDict[img_url]=loader;
			}*/
			
			super();
		}
		
		public function addFirst():void {
			
			var loader:Loader = new Loader();
			loader.load(new URLRequest(images[0]));
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE,function(ev:Event):void {
				canvas.addChild(ev.target.loader);
				//trace(ev);
			});
			
			//var first_img:Loader = imgDict[images[0]];
		}
		
	}
}