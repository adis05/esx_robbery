# [Discord](https://discord.gg/XNru5c3cBx)
requertment :esx, ox_lib, ox_inventory, ox_target, optional ps-dispacth
add this in item.lua ox_inventory
['advancedlockpick'] = {
        label = 'Advanced Lockpick',
        weight = 7,
        consume = 1,
        client = {
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer' },
            disable = { move = true, car = true, combat = true },
            usetime = 500,
            cancel = true
        }
},
