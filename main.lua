--!strict

local Convert = {}

-- define what the functions return using type script
-- define the parameters that are needed
-- check whether the passed arguments are correct

local function checkType(parameter, _type)
   if typeof(parameter) ~= _type then
      local got = typeof(parameter)
       warn ( string.format("Invalid type \"%s.\" (\"%s\" expected)", got, _type) )
      return nil
   end
end

function Convert.UDim2ToVector2(udim2: UDim2) : Vector2
   checkType(udim2, "UDim2")

   return Vector2.new(udim2.X.Offset, udim2.Y.Offset)
end

function Convert.Vector2ToUDim2(vector2: Vector2) : UDim2
   checkType(vector2, "Vector2")

   return UDim2.fromOffset(vector2.X, vector2.Y)
end

function Convert.StringToBool(str: string) : boolean
  checkType(str, "string")

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
   checkType(bool, "boolean")

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
   checkType(color3, "Color3")

   return BrickColor.new(color3)
end

function Convert.BrickColorToColor3(brickcolor: BrickColor) : Color3
   checkType(brickcolor, "BrickColor")

   return brickcolor.Color
end

function Convert.Vector3int16ToVector3(vector16: Vector3int16) : Vector3
   checkType(vector16, "Vector3int16")

   return Vector3.new(vector16.X, vector16.Y, vector16.Z)
end

function Convert.Vector3ToVector3int16(vector3: Vector3) : Vector3int16
   checkType(vector3, "Vector3")

   return Vector3int16.new(vector3.X, vector3.Y, vector3.Z)
end

function Convert.Vector3ToCFrame(vector3: Vector3) : CFrame
  checkType(vector3, "Vector3")

   return CFrame.new(vector3)
end

function Convert.CFrameToVector3(cframe: CFrame) : Vector3
   checkType(cframe, "CFrame")

   return Vector3.new(cframe.X, cframe.Y, cframe.Z)
end

return Convert
