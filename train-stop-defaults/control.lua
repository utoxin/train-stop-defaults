script.on_event(defines.events.on_built_entity, function(event)
    local enabled = settings.get_player_settings(event.player_index)["train-stop-defaults-user-enable-limit-setting"]["value"]
    if (enabled and (event.entity.trains_limit ~= nil and event.entity.trains_limit == 4294967295)) then
        event.entity.trains_limit = settings.get_player_settings(event.player_index)["train-stop-defaults-user-default-train-limit-setting"]["value"]
    end

    if (event.entity.train_stop_priority ~= nil and event.entity.train_stop_priority == 50) then
        event.entity.train_stop_priority = settings.get_player_settings(event.player_index)["train-stop-defaults-user-default-priority-setting"]["value"]
    end
end, {{filter="type", type="train-stop"}})

script.on_event(defines.events.on_robot_built_entity, function(event)
    local enabled = settings.global["train-stop-defaults-global-enable-limit-setting"]["value"]
    if (enabled and (event.entity.trains_limit ~= nil and event.entity.trains_limit == 4294967295)) then
        event.entity.trains_limit = settings.global["train-stop-defaults-global-default-train-limit-setting"]["value"]
    end

    if (event.entity.train_stop_priority ~= nil and event.entity.train_stop_priority == 50) then
        event.entity.train_stop_priority = settings.global["train-stop-defaults-global-default-priority-setting"]["value"]
    end
end, {{filter="type", type="train-stop"}})