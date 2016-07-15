package kvell2D;

import kha.Assets;

class FPS extends Text{
	
	public function new(){
		super(0, 0, "FPS: 0", Assets.fonts.KarmaFuture);
	}

	override function update(){
		super.update();

		this.text = "FPS: " + Manager.time.fps;
	}

}