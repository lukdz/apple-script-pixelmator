tell application "Pixelmator Pro"
	-- Open a prompt that lets you pick multiple Pixelmator Pro files to process 
	-- and save references to all those images in the originalImages variable
	set originalImages to choose file with prompt ?
		"Please select the images to process:" with multiple selections allowed
	-- Open a prompt to choose the location where the files should be exported 
	set exportLocation to choose folder with prompt ?
		"Please select where you'd like export the images:"
	-- Start a repeat loop that loops over each image
	repeat with a from 1 to number of originalImages
		-- Open the current image in the loop
		set currentImage to open item a of originalImages
		--invert colors, make black and white layer 1 of currentImage
		tell layer 1 of currentImage
			tell its color adjustments
				set its invert to true
				set its black and white to true
				set its sharpen to 50
			end tell
		end tell
		-- flip horizontally
		flip horizontally currentImage
		-- rotate left
		rotate left currentImage
		-- Apply the auto lightness adjustments
		auto light currentImage
		-- exit for testing
		-- return
		-- Export the images to the location chosen previously as Pixelmator Pro files
		export currentImage to file ((exportLocation as text) & ?
			name of currentImage & "-edited" & ".jpg") as JPEG
		-- Close the current image without saving
		close currentImage without saving
	end repeat
	display notification (number of originalImages as text) & ?
		" images have been successfully edited." with title "Auto WB and Auto Lightness"
end tell