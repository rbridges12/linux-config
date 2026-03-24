# mode: user.game
title: /Minecraft/i
# app.name: /Minecraft/i
-

# <user.ordinals>: core.repeat_command(ordinals-1)
# <number_small> times: core.repeat_command(number_small-1)
# (repeat that|twice): core.repeat_command(1)
# repeat that <number_small> [times]: core.repeat_command(number_small)
# touch: mouse_click(0)

go: user.hold_key("w", 10)
left: user.hold_key("a", 5)
right: user.hold_key("d", 5)
back: user.hold_key("s", 10)
sprint: 
  key("w:down")
  key("ctrl")

walk: key("w:down")
rise: key("space:down")

stop: 
  key("w:up")
  key("space:up")
# start hit: user.start_hold()
place: mouse_click(1)
# shield: mouse_hold("right")
jump place: 
  user.hold_key("space", 5)
  mouse_click(1)

fly:
  user.hold_key("space", 1)
  user.hold_key("w", 1)
  user.hold_key("space", 1)


settings():
  key_hold = 50