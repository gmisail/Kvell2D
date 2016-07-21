package kvell2D.audio;

import kha.audio1.Audio;

// Provides a binding over the
// default Kha Audio class

// Not really useful yet
// Just an abstraction for now

class Audio{
	
	public var on:Bool = true;
	
	public function new(){

	}

	public function play(s:Sound, ?loop:Bool = false){
		kha.audio1.Audio.play(s.base, false);
	}
	
	public function playMusic(s:Sound){
		kha.audio1.Audio.play(s.base, true);
	}
	
}