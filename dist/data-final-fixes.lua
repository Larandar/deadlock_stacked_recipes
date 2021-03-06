local logger = require("utils/logging").logger

require "mods.Krastorio2.data-final-fixes"
require "mods.FactorioExtended-Plus-Module.data-final-fixes"
require "mods.Deadlock-SE-bridge.data-final-fixes"

if settings.startup["deadlock-enable-beltboxes"].value then
    local Deadlock = require("utils/deadlock")

    Deadlock.DensityOverride()
    Deadlock.MakeStackedRecipes()
    Deadlock.DensityOverride()
    Deadlock.FixLocalisedNames()
    -- Deadlock.SubGroups()
    Deadlock.FixResearchTree()
end

require "mods.CompressedFluids.data-final-fixes"

logger("9", serpent.block(data.raw))
