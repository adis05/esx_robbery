GlobalState = false

function TimerThread()
    GlobalState = true
    local math = math.random(900000, 1500000)
    Citizen.Wait(math)
    GlobalState = false
end

RegisterNetEvent('mayatwarung:client:start')
AddEventHandler('mayatwarung:client:start', function()
    local state = GlobalState
    ESX.TriggerServerCallback('getPoliceCount', function(policeCount)
        if policeCount > 1 then
            if state == false then
                ExecuteCommand('e mechanic2')
                local lockpick = exports['lastrobbery']:startLockpick() -- Tambahkan ini
                if lockpick then
                    local skillcheck = lib.skillCheck({'easy'})
                    if skillcheck then
                        FreezeEntityPosition(PlayerPedId(), true)
                        exports['ps-dispatch']:StoreRobbery(camId) -- ALRM PERAMPOKAN WARUNG BERBUNYI
                        if lib.progressCircle({
                            duration = 30000, 
                            label = 'Memasukan Uang. . .', 
                            useWhileDead = false, 
                            canCancel = true,
                            disable = {car = true,}, 
                            anim = {dict = 'anim@heists@ornate_bank@grab_cash', clip = 'grab'},  flag = 3}) then 
                            FreezeEntityPosition(PlayerPedId(), false)
                            ExecuteCommand('e c')
                            lib.callback('mayatwarung:server:succes')
                            TimerThread()
                        else 
                            FreezeEntityPosition(PlayerPedId(), false)
                            ExecuteCommand('e c')
                            lib.callback('mayatwarung:server:removeItem')
                        end 
                    else
                        FreezeEntityPosition(PlayerPedId(), false)
                        ExecuteCommand('e c')
                        lib.callback('mayatwarung:server:removeItem')
                    end
                else
                    FreezeEntityPosition(PlayerPedId(), false)
                    ExecuteCommand('e c')
                    lib.callback('mayatwarung:server:removeItem')
                end
            else
                lib.defaultNotify({
                    status = "error",
                    title = "Perampokan Warung",
                    position = "top",
                    description = "Anda tidak dapat merampok, tunggu cooldown!",
                })
                if not lockpick then
                    lib.callback('mayatwarung:server:removeItem')
                end
            end
        else
            lib.defaultNotify({
                status = "error",
                title = "Perampokan Warung",
                position = "top",
                description = "Tidak Cukup Polisi yang bertugas!",
            })
        end 
    end)
end)
