from talon import Context, Module, actions

mod = Module()

@mod.action_class
class KeyActions:
    def toggle_speech():
        """Toggles speech on and off"""
        if actions.speech.enabled():
            actions.speech.disable()
        else:
            actions.speech.enable()