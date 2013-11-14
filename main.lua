---------------------------------------------------

local _W = display.contentWidth
local _H = display.contentHeight

---------------------------------------------------

local yellow = display.newImage("yellow.png", 0, 0)
yellow.x = _W/2 ; yellow.y = _H/3

local blue = display.newImage("blue.png", 0, 0)
blue.x = _W/5 ; blue.y = _H*2/3

local green = display.newImage("green.png", 0, 0)
green.x = _W*4/5 ; green.y = _H*2/3

---------------------------------------------------

local ySE = audio.loadSound( "ySE.mp3" )
local bSE = audio.loadSound( "bSE.mp3" )
local gSE = audio.loadSound( "gSE.mp3" )

---------------------------------------------------

local function onYellow(event)
	if(event.phase == "began")then
		audio.play( ySE )
	end
end

yellow:addEventListener("touch", onYellow)

---------------------------------------------------

local function onBlue(event)
	if(event.phase == "began")then
		audio.play( bSE )
	end
end

blue:addEventListener("touch", onBlue)

---------------------------------------------------

local function onGreen(event)
	if(event.phase == "began")then
		audio.play( gSE )
	end
end

green:addEventListener("touch", onGreen)

---------------------------------------------------
