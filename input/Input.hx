package kvell2D.input;

import kha.Key;

//get input
//if(Input.keyboard.A)
//or
//if(Input.mouse.down)

class Input {

    public static var keyboard:Keyboard;
    public static var mouse:Mouse;

	public function new(){
		keyboard = new Keyboard();
        mouse = new Mouse();

	}

}