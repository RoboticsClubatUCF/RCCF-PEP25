-- This script reverses SERVO3 output when RC5 is high (e.g., switch is ON)
-- Tested for ArduRover 4.5.7 on CubeOrange+

local rc_input_channel = 5  -- RC5
local servo_channel = 3     -- SERVO3
local reverse = false

function update()
    local rc5 = rc:get_pwm(rc_input_channel)
    if rc5 == nil then
        return update, 100
    end

    -- Check if RC5 is high (above 1500 typically indicates switch ON)
    if rc5 > 1500 then
        if not reverse then
            -- Reverse SERVO3 by setting negative scaling
            param:set('SERVO3_REVERSED', 1)
            reverse = true
        end
    else
        if reverse then
            -- Restore normal direction
            param:set('SERVO3_REVERSED', 0)
            reverse = false
        end
    end

    return update, 100  -- Run every 100ms
end

return update()

