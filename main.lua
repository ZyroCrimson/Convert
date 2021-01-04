--!strict

local Convert = {}

-- define what the functions return using type script
-- define the parameters that are needed
-- check whether the passed arguments are correct

function Convert.UDim2ToVector2(udim2: UDim2) : Vector2
   if typeof(udim2) ~= "UDim2" then 
	warn ("Parameter must be a UDim2") 
	return nil 
   end

   return Vector2.new(udim2.X.Offset, udim2.Y.Offset)
end

function Convert.Vector2ToUDim2(vector2: Vector2) : UDim2
   if typeof(vector2) ~= "Vector2" then 
	warn ("Parameter must be a Vector2") 
	return nil 
   end

   return UDim2.fromOffset(vector2.X, vector2.Y)
end

function Convert.StringToBool(str: string) : boolean
  if typeof(str) ~= "string" then
      warn("Parameter must be a string!")
  end

  if str == "true" or str == "false" then
      if str == "true" then
         return true
  elseif str == "false" then
	 return false
      end
  else
      warn("Parameter must be either \"true\" or \"false\"")
      return nil
   end
end

function Convert.BoolToString(bool: boolean) : string
   if typeof(bool) ~= "boolean" then 
	warn ("Parameter must be a boolean") 
	return "null"
   end

  if bool == true or bool == false then
      if bool == true then
          return "true"
      elseif bool == false then
	  return "false"
      end
   else
      warn("Parameter must be either \"true\" or \"false\"!")
      return "nil"
   end
end

function Convert.Color3ToBrickColor(color3: Color3) : BrickColor
   if typeof(color3) ~= "Color3" then 
	warn ("Parameter must be a Color3") 
	return nil 
   end

   return BrickColor.new(color3)
end

function Convert.BrickColorToColor3(brickcolor: BrickColor) : Color3
   if typeof(brickcolor) ~= "BrickColor" then 
	warn ("Parameter must be a BrickColor") 
	return nil 
   end

   return brickcolor.Color
end

function Convert.Vector3int16ToVector3(vector16: Vector3int16) : Vector3
   if typeof(vector16) ~= "Vector3int16" then 
	warn ("Parameter must be a Vector3int16") 
	return nil 
   end

   return Vector3.new(vector16.X, vector16.Y, vector16.Z)
end

function Convert.Vector3ToVector3int16(vector3: Vector3) : Vector3int16
   if typeof(vector3) ~= "Vector3" then 
	warn ("Parameter must be a Vector3") 
	return nil 
   end

   return Vector3int16.new(vector3.X, vector3.Y, vector3.Z)
end

function Convert.Vector3ToCFrame(vector3: Vector3) : CFrame
   if typeof(vector3) ~= "Vector3" then 
	warn ("Parameter must be a Vector3") 
	return nil
   end

   return CFrame.new(vector3)
end

function Convert.CFrameToVector3(cframe: CFrame) : Vector3
   if typeof(cframe) ~= "CFrame" then 
	warn ("Parameter must be a CFrame") 
	return nil 
   end

   return Vector3.new(cframe.X, cframe.Y, cframe.Z)
end

return Convert
