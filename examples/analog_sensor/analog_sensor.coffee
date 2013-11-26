Cylon = require '../..'

Cylon.robot
  connection:
    name: 'arduino'
    adaptor: 'firmata'
    port: '/dev/ttyACM0'

  device:
      name: 'sensor'
      driver: 'analogSensor'
      pin: 0
      upperLimit: 900
      lowerLimit: 100

  work: (my) ->
    my.sensor.on 'upperLimit', (val) ->
      Logger.info "Upper limit reached ===> #{val}"

    my.sensor.on 'lowerLimit', (val) ->
      Logger.info "Lower limit reached ===> #{val}"

.start()
