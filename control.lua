require("runtime/runtime")

pd = {}

script.on_event(defines.events.on_script_trigger_effect,
    function(event)
        if event.source_entity.player then
            if event.effect_id == "lean" then
                pd[event.source_entity.player.index] = {
                    zoom = 100,
                    zst = -99.0 / 100.0,
                    zcd = 100
                }
                event.source_entity.player.zoom = pd[event.source_entity.player.index].zoom
            end
        end
    end
)

script.on_event(defines.events.on_tick,
    function(event)
        for playern, pd_ in ipairs(pd) do
            if game.players[playern] then
                if pd_.zcd > 0 then
                    pd_.zcd = pd_.zcd - 1
                    pd_.zoom = pd_.zoom + pd_.zst
                    game.players[playern].zoom = pd_.zoom
                end 
            end
        end
    end
)