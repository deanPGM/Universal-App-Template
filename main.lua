--[[ 
Project: Universal App Template                        																															
Description: A basic template that allows iPhone, iPhone Retina, iPhone 5, iPad & iPad retina to be created
Twitter: @CraftyDeano
GitHub: @CraftyDeano
Web: http://echoecho.es

<ShamelessAdvertising>
My 2nd iPhone app, Joke Shake, is available free on the app store for all devices!
Grab it at www.jokeshake.com
</ShamelessAdvertising>
]]--

-- If isTall returns true, the device is an iPhone 5, if false, it is a standard size iPhone
isTall = ( "iPhone" == system.getInfo( "model" ) ) and ( display.pixelHeight > 960 )

-- targetDevice will return the model of the device, which is either iPhone or iPad
targetDevice = ( system.getInfo( "model" ) ) 

-- These display variables allow us to center images across all devices. 
-- No matter the resolution, they will always point to the centre of the height or width.
_W = display.contentWidth / 2
_H = display.contentHeight / 2

-- A simple function that displays a image in the center of the screen
function main()
	if targetDevice == "iPad" or targetDevice == "iPad Simulator" then  
		print "iPad"
		splashBG = display.newImageRect("background_IPAD.png",763,1024)
		splashBG.x = _W; splashBG.y = _H
	else
		if isTall == true then
			print "Tall iPhone" 
			splashBG = display.newImageRect("background_TALL.png",320,568)
			splashBG.x = _W; splashBG.y = _H
		else
			print "Normal iPhone"
			splashBG = display.newImageRect("background_NORMAL.png",320,480)
			splashBG.x = _W; splashBG.y = _H
		end
	end
end

main()