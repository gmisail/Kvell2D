package kvell2D.assets;

import kha.Assets;
import kha.Image;
import kha.Blob;
import kha.Font;
import kha.Video;

class File {
	
	public function new(){
	
	}
	
	//Manager.assets.image("myImage");
	public function image(name:String):Image{
		return Reflect.field(Assets.images, name);	
	}

	//Manager.assets.file("tilemap");	
	public function file(name:String):Blob{
		return Reflect.field(Assets.blobs, name);	
	}
	
	//Manager.assets.sound("mySound");	
	public function sound(name:String):kha.Sound{
		return Reflect.field(Assets.sounds, name);	
	}
	
	public function font(name:String):Font{
		return Reflect.field(Assets.fonts, name);	
	}
	
	public function video(name:String):Video{
		return Reflect.field(Assets.videos, name);	
	}

}