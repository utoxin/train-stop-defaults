data:extend({
    {
        type = "bool-setting",
        name = "train-stop-defaults-user-enable-limit-setting",
        setting_type = "runtime-per-user",
        default_value = true,
        order = "0"
    },
    {
        type = "int-setting",
        name = "train-stop-defaults-user-default-train-limit-setting",
        setting_type = "runtime-per-user",
        default_value = 1,
        minimum_value = 0,
        order = "1"
    },
    {
        type = "bool-setting",
        name = "train-stop-defaults-global-enable-limit-setting",
        setting_type = "runtime-global",
        default_value = true,
        order = "0"
    },
    {
        type = "int-setting",
        name = "train-stop-defaults-global-default-train-limit-setting",
        setting_type = "runtime-global",
        default_value = 1,
        minimum_value = 0,
        order = "1"
    }
})