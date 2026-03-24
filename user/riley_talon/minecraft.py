from talon import Module, ctrl
mod = Module()

@mod.action_class
class MinecraftActions:
  def hold_key(key: str, duration: int):
    """Hold a key for a specified duration in milliseconds."""
    ctrl.key_press(key, hold=duration*50000)
  