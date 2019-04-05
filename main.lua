-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
display.setDefault( "background", 100/255, 100/255, 200/255 )

local calculateButton = display.newImageRect( "./assets/calculate.png", 200, 60 )
calculateButton.x = display.contentCenterX
calculateButton.y = 210
calculateButton.id = " calculateButton "

local museum = display.newImageRect( "./assets/museum.png", 195, 160 )
museum.x = display.contentCenterX
museum.y = 40
museum.id = " museum "

local title1 = display.newText( "Type your age here: ", 160, 290, native.systemFont, 25 )
title1:setFillColor( 255/255, 29/255, 96/255 )

local title2 = display.newText( "Type the day here: ", 160, 410, native.systemFont, 25 )
title2:setFillColor( 255/255, 29/255, 96/255 )

--textfields
local myAgeTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 110, 300, 60 )
myAgeTextfield.id = " myAgeTextField"

local theDayTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 230, 300, 60 )
theDayTextfield.id = "the day TextField"

local screenText = display.newText( "Are you eligible for a discount?", 160, 140, native.systemFont, 20 )
screenText:setFillColor( 240/255, 150/255, 0/255 )

local function calculateButtonTouch ( event )
	myAge = tonumber( myAgeTextfield.text )
	theDay = ( theDayTextfield.text )

	if ( myAge >= 12 and myAge <= 21) or ( theDay == "tuesday" or theDay == "thursday") then
		screenText.text = "You pay student pricing:)"
		print("STUDENT PRICING")
	elseif myAge <= 3 then
		screenText.text = "You pay infant pricing"
		print("INFANT PRICING")
	else
		screenText.text = "You pay normal pricing"
		print("FULL PRICING")
	end
end

calculateButton :addEventListener( "touch", calculateButtonTouch )