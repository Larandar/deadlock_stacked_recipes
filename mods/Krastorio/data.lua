if mods["Krastorio"] then
    local Deadlock = require("utils/deadlock")

    local Items = {
        ["empty-matter-stabilizer"] = {tier = 3, sub_group = "intermediate-product"},
        ["matter-stabilizer"] = {tier = 3, sub_group = "intermediate-product"},
        ["k-experimental-data"] = {tier = 3}
    }

    Deadlock.MakeDeadlockItems(Items)
    Deadlock.FixResearchTree(Items)
end
