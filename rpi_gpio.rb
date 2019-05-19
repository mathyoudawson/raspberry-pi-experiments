require 'rpi_gpio'

RPi::GPIO.set_numbering :board

PIN_NUM = 8

RPi::GPIO.setup PIN_NUM, :as => :output, :initialize => :low

10.times do 
  RPi::GPIO.set_high PIN_NUM
  sleep(0.5)
  RPi::GPIO.set_low PIN_NUM
end

RPi::GPIO.clean_up PIN_NUM
