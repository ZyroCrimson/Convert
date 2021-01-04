--!strict

local Convert = {}

function Convert.UDim2ToVector2(udim2)
	return Vector2.new(udim2.X.Offset, udim2.Y.Offset)
end

function Convert.Vector2ToUDim2(vector2)
	return UDim2.fromOffset(vector2.X, vector2.Y)
end

function Convert.StringToBool(str)
	if str == "true" or str == "false" then
		local boolNew
		
		if str == "true" then
			boolNew = true
		elseif str == "false" then
			boolNew = false
		end
		
		return boolNew
	else
		warn("Parameter must be a string!")
		return nil
	end
end

function Convert.BoolToString(bool)
	if bool == true or bool == false then
		local stringNew
		
		if bool == true then
			stringNew = "true"
		elseif bool == false then
			stringNew = "false"
		end
		
		return stringNew
	else
		warn("Parameter must be a boolean!")
		return "nil"
	end
end

function Convert.Color3ToBrickColor(color3)
	return BrickColor.new(color3)
end

function Convert.BrickColorToColor3(brickcolor)
	return brickcolor.color
end

function Convert.Vector3int16ToVector3(vector16)
	return Vector3.new(vector16.X, vector16.Y, vector16.Z)
end

function Convert.Vector3ToVector3int16(vector3)
	return Vector3int16.new(vector3.X, vector3.Y, vector3.Z)
end

function Convert.Vector3ToCFrame(vector3)
	if (not vector3.X) or (not vector3.Y) or (not vector3.Z) then
		warn("Parameter must be a Vector3!")
		return
	else
		return CFrame.new(vector3)
	end
end

function Convert.CFrameToVector3(cframe)
	if (not cframe.X) or (not cframe.Y) or (not cframe.Z) then
		warn("Parameter must be a CFrame!")
		return
	else
		return Vector3.new(cframe.X, cframe.Y, cframe.Z)
	end
end

return Convert
return Convert
