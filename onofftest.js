'use strict'

var Gpio = require('onoff').Gpio
var led = new Gpio(132, 'out')
var button = new Gpio(4, 'in', 'both')

button.watch(function (err, value) {
  if (err) {
    throw err
  }

  led.writeSync(value)
})

process.on('SIGINT', function () {
  led.unexport()
  button.unexport()
})
