local event = require("__flib__.event")

event.register(
        { defines.events.on_built_entity },
        function(event)
            local enabled = settings.get_player_settings(event.player_index)["train-stop-defaults-user-enable-limit-setting"]["value"]
            if (enabled and (event.created_entity.trains_limit ~= nil and event.created_entity.trains_limit == 4294967295)) then
                event.created_entity.trains_limit = settings.get_player_settings(event.player_index)["train-stop-defaults-user-default-train-limit-setting"]["value"]
            end
        end,
        {
            { filter="type", type="train-stop" }
        }
)

event.register(
        { defines.events.on_robot_built_entity },
        function(event)
            local enabled = settings.global["train-stop-defaults-global-enable-limit-setting"]["value"]
            if (enabled and (event.created_entity.trains_limit ~= nil and event.created_entity.trains_limit == 4294967295)) then
                event.created_entity.trains_limit = settings.global["train-stop-defaults-global-default-train-limit-setting"]["value"]
            end
        end,
        {
            { filter="type", type="train-stop" }
        }
)