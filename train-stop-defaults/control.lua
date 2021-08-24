local event = require("__flib__.event")

event.register(
        { defines.events.on_built_entity },
        function(event)
            event.created_entity.trains_limit = settings.get_player_settings(event.player_index)["train-stop-defaults-user-default-train-limit-setting"]["value"]
        end,
        {
            { filter="type", type="train-stop" }
        }
)

event.register(
        { defines.events.on_robot_built_entity },
        function(event)
            event.created_entity.trains_limit = settings.global["train-stop-defaults-global-default-train-limit-setting"]["value"]
        end,
        {
            { filter="type", type="train-stop" }
        }
)