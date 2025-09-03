-- Lua script to control Servo 5 as a "relay"
-- Sends 2000 PWM when armed, 1000 PWM when disarmed

function update_relay_pwm()
    if arming:is_armed() then
        --SRV_Channels:set_output_pwm_chan_timeout(5, 2000, 100) 
        gpio:write(105, 1)
        gcs:send_text(6, "ARMED: Relay ON")
    else
        --SRV_Channels:set_output_pwm_chan_timeout(5, 1000, 100)
        gpio:write(105, 0)
        gcs:send_text(6, "DISARMED: Relay OFF")
    end
end

function loop()
    update_relay_pwm()
    return loop, 500
end

return loop()

