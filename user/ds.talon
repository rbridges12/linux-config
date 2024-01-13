
mode: user.game

-
<user.ordinals>: core.repeat_command(ordinals-1)
<number_small> times: core.repeat_command(number_small-1)
(repeat that|twice): core.repeat_command(1)
repeat that <number_small> [times]: core.repeat_command(number_small)
touch: mouse_click(0)

quit game mode:
	mode.disable("user.game")
	mode.enable("command")
can:
	key(a:up)
	key(s:up)
	key(d:up)
	key(w:up)
	key(w:down)
	sleep(125ms)
	key(w:up)
jay:
	key(a:up)
	key(s:up)
	key(d:up)
	key(w:up)
	key(s:down)
	sleep(125ms)
	key(s:up)
harp:
	key(a:up)
	key(s:up)
	key(d:up)
	key(w:up)
	key(a:down)
	sleep(125ms)
	key(a:up)
look:
	key(a:up)
	key(s:up)
	key(d:up)
	key(w:up)
	key(d:down)
	sleep(125ms)
	key(d:up)
hold can:
	key(a:up)
	key(s:up)
	key(d:up)
	key(w:up)
	key(w:down)
hold jay:
	key(a:up)
	key(s:up)
	key(d:up)
	key(w:up)
	key(s:down)
hold harp:
	key(a:up)
	key(s:up)
	key(d:up)
	key(w:up)
	key(a:down)
hold look:
	key(a:up)
	key(s:up)
	key(d:up)
	key(w:up)
	key(d:down)
hold none:
	key(a:up)
	key(s:up)
	key(d:up)
	key(w:up)
start:
	key(a:up)
	key(s:up)
	key(d:up)
	key(w:up)
	key(enter:down)
	sleep(50ms)
	key(enter:up)
select:
	key(a:up)
	key(s:up)
	key(d:up)
	key(w:up)
	key(m:down)
	sleep(50ms)
	key(m:up)
air:
	key(c:down)
	sleep(125ms)
	key(c:up)
	sleep(10ms)
bat:
	key(v:down)
	sleep(125ms)
	key(v:up)
plex:
	key(x:down)
	sleep(125ms)
	key(x:up)
yank:
	key(y:down)
	sleep(125ms)
	key(y:up)
run:
	key(v:down)
walk:
	key(v:up)
fast:
	key(space:down)
slow:
	key(space:up)
