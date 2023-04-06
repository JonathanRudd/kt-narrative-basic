// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)



// terminal js
const h1 = document.getElementById("h")

const setShadow = () => {
  let displace = 0.2 + Math.random() * 1.7
  const shadow = `${displace}px 0px 1px rgba(0, 70, 255, 0.6), ${-displace}px 0px 1px rgba(255, 50, 0, 0.6), 0 0 4px`
  document.body.style.textShadow = shadow;
}

setShadow();
setInterval(setShadow, 40)
