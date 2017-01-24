const five = require('johnny-five')
const chipio = require('chip-io')

var board = new five.Board({
  io: new chipio()
})

board.on('ready', function() {
  // Create an LED on the PWM0 pin
  var led = new five.Led('PWM0')

  led.pulse(1)
})
