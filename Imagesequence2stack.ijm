# ImageJ-Fiji function to import phase difference distribution files generated by LastWave
# written by Aaron Tanenbaum
# modified by Christian Richard to generate figures for SWDfinder algorithm paper

path = File.openDialog("Choose Image sequence file");
dir = File.getParent(path);
name = File.getName(path);

images = File.openAsString(path) 
images = split(images,"\n")
print(images.length)
for ( i= 0; i<images.length;i++) {
	run("Text Image... ", "open="+images[i]);
}
run("Images to Stack");
/*Dialog.create("Image Sequence");
Dialog.addNumber("Width:", 512);
Dialog.show();

for (i  = 0; i < size; i++) {
	if ( i <10){
		a = folder + "00" + i + ".txt";
		
	}
	else if(i<100) {
		a = folder +  "0" + i + ".txt";
	}
	else 
	{
		a = folder + i + ".txt";
	}
	//print(a);
	run("Text Image... ", "open="+a);
}
run("Images to Stack");*/