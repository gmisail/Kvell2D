package kvell2D.input;

import kha.input.Keyboard;
import kha.Key;

class Keyboard {
	
	public function new(){
		kha.input.Keyboard.get().notify(_keyDown, _keyUp);
	}

	/* KEYBOARD */
	public var A:Bool = false;
	public var B:Bool = false;
	public var C:Bool = false;
	public var D:Bool = false;
	public var E:Bool = false;
	public var F:Bool = false;
	public var G:Bool = false;
	public var H:Bool = false;
	public var I:Bool = false;
	public var J:Bool = false;
	public var K:Bool = false;
	public var L:Bool = false;
	public var M:Bool = false;
	public var N:Bool = false;
	public var O:Bool = false;
	public var P:Bool = false;
	public var Q:Bool = false;
	public var R:Bool = false;
	public var S:Bool = false;
	public var T:Bool = false;
	public var U:Bool = false;
	public var V:Bool = false;
	public var W:Bool = false;
	public var X:Bool = false;
	public var Y:Bool = false;
	public var Z:Bool = false;

	/* SPECIAL KEYS */
	public var BACKSPACE:Bool = false;
	public var TAB:Bool = false;
	public var ENTER:Bool = false;
	public var SHIFT:Bool = false;
	public var CTRL:Bool = false;
	public var ALT:Bool = false;
	public var CHAR:Bool = false;
	public var ESC:Bool = false;
	public var DEL:Bool = false;
	public var UP:Bool = false;
	public var DOWN:Bool = false;
	public var LEFT:Bool = false;
	public var RIGHT:Bool = false;
	public var BACK:Bool = false;
	public var SPACE:Bool = false;


	private function _keyDown(key: Key, char: String): Void {
  		switch (key) {
    		case kha.Key.LEFT: this.LEFT = true;
 			case kha.Key.RIGHT: this.RIGHT = true;
   			case kha.Key.UP: this.UP = true;
    		case kha.Key.DOWN: this.DOWN = true;
    		case kha.Key.BACKSPACE: this.BACKSPACE = true;
    		case kha.Key.TAB: this.TAB = true;
    		case kha.Key.ENTER: this.ENTER = true;
    		case kha.Key.SHIFT: this.SHIFT = true;
    		case kha.Key.CTRL: this.CTRL = true;
    		case kha.Key.ALT: this.ALT = true;
    		case kha.Key.ESC: this.ESC = true;
    		case kha.Key.DEL: this.DEL = true;
    		case kha.Key.BACK: this.BACK = true;
    		case kha.Key.CHAR:
    			switch(char.toLowerCase()){
    				case ' ': this.SPACE = true;
    				case 'a': this.A = true;
    				case 'b': this.B = true;
    				case 'c': this.C = true;
    				case 'd': this.D = true;
    				case 'e': this.E = true;
    				case 'f': this.F = true;
    				case 'g': this.G = true;
    				case 'h': this.H = true;
    				case 'i': this.I = true;
    				case 'j': this.J = true;
    				case 'k': this.K = true;
    				case 'l': this.L = true;
    				case 'm': this.M = true;
    				case 'n': this.N = true;
    				case 'o': this.O = true;
    				case 'p': this.P = true;
    				case 'q': this.Q = true;
    				case 'r': this.R = true;
    				case 's': this.S = true;
    				case 't': this.T = true;
    				case 'u': this.U = true;
    				case 'v': this.V = true;
    				case 'w': this.W = true;
    				case 'x': this.X = true;
    				case 'y': this.Y = true;
    				case 'z': this.Z = true;
    			}
    		default:
    	}
  	}

  	private function _keyUp(key: Key, char: String): Void {
  		switch (key) {
    		case kha.Key.LEFT: this.LEFT = false;
 			case kha.Key.RIGHT: this.RIGHT = false;
   			case kha.Key.UP: this.UP = false;
    		case kha.Key.DOWN: this.DOWN = false;
    		case kha.Key.BACKSPACE: this.BACKSPACE = false;
    		case kha.Key.TAB: this.TAB = false;
    		case kha.Key.ENTER: this.ENTER = false;
    		case kha.Key.SHIFT: this.SHIFT = false;
    		case kha.Key.CTRL: this.CTRL = false;
    		case kha.Key.ALT: this.ALT = false;
    		case kha.Key.ESC: this.ESC = false;
    		case kha.Key.DEL: this.DEL = false;
    		case kha.Key.BACK: this.BACK = false;
    		case kha.Key.CHAR:
    			switch(char.toLowerCase()){
    				case ' ': this.SPACE = false;
    				case 'a': this.A = false;
    				case 'b': this.B = false;
    				case 'c': this.C = false;
    				case 'd': this.D = false;
    				case 'e': this.E = false;
    				case 'f': this.F = false;
    				case 'g': this.G = false;
    				case 'h': this.H = false;
    				case 'i': this.I = false;
    				case 'j': this.J = false;
    				case 'k': this.K = false;
    				case 'l': this.L = false;
    				case 'm': this.M = false;
    				case 'n': this.N = false;
    				case 'o': this.O = false;
    				case 'p': this.P = false;
    				case 'q': this.Q = false;
    				case 'r': this.R = false;
    				case 's': this.S = false;
    				case 't': this.T = false;
    				case 'u': this.U = false;
    				case 'v': this.V = false;
    				case 'w': this.W = false;
    				case 'x': this.X = false;
    				case 'y': this.Y = false;
    				case 'z': this.Z = false;
    			}
    		default:
    	}
  	}

}