--==============================
-- Exports the frontmost keynote file to a kpf 
--==============================

-- Make sure a presentation is opened in Keynote. If not, notify the user and stop.
tell application "Keynote"
	if (front slideshow exists) = false then
		display alert "Unable to proceed." message "Please open a presentation in Keynote."
		return
	end if
	
	export front slideshow to "/Users/chrisjrn/Desktop/Keynote Export.KPF" as KPF_RAW
	
end tell
