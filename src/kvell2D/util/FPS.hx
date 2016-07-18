package kvell2D.util;

import kha.Assets;
import kha.Font;

import kvell2D.graphics.Text;

class FPS extends Text{
	
	public function new(font:Font){
		super(0, 0, "FPS: 0", font);

		this.size = 16;
	}

	override function update(){
		super.update();

		this.text = "FPS: " + Manager.time.fps;
	}

}