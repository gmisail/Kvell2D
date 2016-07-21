package kvell2D.audio;

class Sound{
	
	public var base:kha.Sound;
	
	@:isVar
	public var volume(get, set):Int;
	
	public function new(base:kha.Sound, ?volume:Int = 1){
		this.base = base;
		this.volume = volume;
		//this.base.volume = this.volume;
	}
	
	private function set_volume(volume){
		this.volume = volume;
		//this.base.volume = this.volume;
		
		return volume;
	}
	
	private function get_volume(){
		return volume;
	}
	
}