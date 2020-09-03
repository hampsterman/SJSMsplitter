//Spooky's Jumpscare Mansion Auto Splitter
//Developed by AkagitsuneYuki
//Splits after every 50th room.
//You still have to manually start the time.
//If you're doing 1000 rooms you should make a split for the final boss.
//Tested by running the game's executable without Steam on Windows 10 64-bit

state("SPOOKY")
{
	int room : "SPOOKY.exe", 0x18F800, 0;
}

start
{
}
 
reset
{
}

split
{
	if(current.room != 0){
		if(old.room != current.room){
			if((old.room + 1) % 50 == 0) return true;
		}
	}
}
 
gameTime
{	
} 